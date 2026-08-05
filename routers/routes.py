"""
SmartML Advisor - All Routes
"""
import requests
import os
import uuid
import json
import numpy as np
from datetime import datetime
from typing import Optional
from fastapi import APIRouter, Depends, HTTPException, Request, UploadFile, File, Form
from fastapi.responses import HTMLResponse, RedirectResponse, JSONResponse
from fastapi.templating import Jinja2Templates
from sqlalchemy.orm import Session
from pydantic import BaseModel

from database import get_db
from models import (
    User, FileUpload, DatasetProfile, ColumnStatistic,
    MLAlgorithm, AlgorithmCategory, Recommendation, RecommendationReason,
    AnalysisReport, UserFeedback, ActivityLog
)
from services.auth_service import (
    hash_password, verify_password, create_access_token,
    log_activity, get_current_user, require_user
)
from services.data_profiler import DataProfiler
from services.ml_recommender import MLRecommender
from dotenv import load_dotenv

load_dotenv()

UPLOAD_DIR = os.getenv("UPLOAD_DIR", "uploads")
MAX_FILE_MB = int(os.getenv("MAX_FILE_SIZE_MB", "50"))
ALLOWED_EXTENSIONS = {"csv", "xlsx", "xls", "json"}
os.makedirs(UPLOAD_DIR, exist_ok=True)

templates = Jinja2Templates(directory="templates")

def make_serializable(obj):
    if isinstance(obj, dict):
        return {k: make_serializable(v) for k, v in obj.items()}
    elif isinstance(obj, list):
        return [make_serializable(i) for i in obj]
    elif isinstance(obj, np.integer):
        return int(obj)
    elif isinstance(obj, np.floating):
        return float(obj)
    elif isinstance(obj, np.bool_):
        return bool(obj)
    elif isinstance(obj, bool):
        return bool(obj)
    return obj

# ═══════════════════════════════════════════════════
# Pydantic Schemas
# ═══════════════════════════════════════════════════
class RegisterForm(BaseModel):
    username: str
    email: str
    password: str
    full_name: Optional[str] = None

class LoginForm(BaseModel):
    email: str
    password: str

class FeedbackForm(BaseModel):
    recommendation_id: int
    rating: int
    feedback_text: Optional[str] = None
    was_helpful: Optional[bool] = None
    actual_algorithm_used: Optional[str] = None


# ═══════════════════════════════════════════════════
# PAGE ROUTER
# ═══════════════════════════════════════════════════
page_router = APIRouter(tags=["Pages"])

@page_router.get("/", response_class=HTMLResponse)
async def home(request: Request, db: Session = Depends(get_db)):
    user = get_current_user(request, db)
    if user:
        return RedirectResponse("/dashboard")
    return templates.TemplateResponse("index.html", {"request": request, "user": None})

@page_router.get("/login", response_class=HTMLResponse)
async def login_page(request: Request, db: Session = Depends(get_db)):
    user = get_current_user(request, db)
    if user:
        return RedirectResponse("/dashboard")
    return templates.TemplateResponse("login.html", {"request": request, "user": None})

@page_router.get("/register", response_class=HTMLResponse)
async def register_page(request: Request, db: Session = Depends(get_db)):
    user = get_current_user(request, db)
    if user:
        return RedirectResponse("/dashboard")
    return templates.TemplateResponse("register.html", {"request": request, "user": None})

@page_router.get("/logout")
async def logout_page(request: Request):
    response = RedirectResponse(url="/", status_code=302)
    response.delete_cookie("access_token")
    return response

@page_router.get("/dashboard", response_class=HTMLResponse)
async def dashboard(request: Request, db: Session = Depends(get_db)):
    user = require_user(request, db)
    if isinstance(user, RedirectResponse):
        return user
    uploads = db.query(FileUpload).filter(
        FileUpload.user_id == user.id
    ).order_by(FileUpload.created_at.desc()).limit(10).all()
    total_uploads = db.query(FileUpload).filter(FileUpload.user_id == user.id).count()
    total_reports = db.query(AnalysisReport).filter(AnalysisReport.user_id == user.id).count()
    return templates.TemplateResponse("dashboard.html", {
        "request": request,
        "user": user,
        "uploads": uploads,
        "total_uploads": total_uploads,
        "total_reports": total_reports
    })

@page_router.get("/upload", response_class=HTMLResponse)
async def upload_page(request: Request, db: Session = Depends(get_db)):
    user = require_user(request, db)
    if isinstance(user, RedirectResponse):
        return user
    return templates.TemplateResponse("upload.html", {"request": request, "user": user})

@page_router.get("/history", response_class=HTMLResponse)
async def history_page(request: Request, db: Session = Depends(get_db)):
    user = require_user(request, db)
    if isinstance(user, RedirectResponse):
        return user
    uploads = db.query(FileUpload).filter(
        FileUpload.user_id == user.id
    ).order_by(FileUpload.created_at.desc()).all()
    return templates.TemplateResponse("history.html", {
        "request": request, "user": user, "uploads": uploads
    })

@page_router.get("/algorithms", response_class=HTMLResponse)
async def algorithms_page(request: Request, db: Session = Depends(get_db)):
    user = get_current_user(request, db)
    categories = db.query(AlgorithmCategory).all()
    algorithms = db.query(MLAlgorithm).all()
    return templates.TemplateResponse("algorithms.html", {
        "request": request, "user": user,
        "categories": categories, "algorithms": algorithms
    })

@page_router.get("/result/{upload_id}", response_class=HTMLResponse)
async def result_page(upload_id: int, request: Request, db: Session = Depends(get_db)):
    user = require_user(request, db)
    if isinstance(user, RedirectResponse):
        return user
    upload = db.query(FileUpload).filter(
        FileUpload.id == upload_id, FileUpload.user_id == user.id
    ).first()
    if not upload:
        raise HTTPException(status_code=404, detail="Upload not found")
    profile = db.query(DatasetProfile).filter(DatasetProfile.upload_id == upload_id).first()
    recommendations = db.query(Recommendation).filter(
        Recommendation.upload_id == upload_id,
        Recommendation.recommendation_status == "active"
    ).order_by(Recommendation.rank_position).all()
    report = db.query(AnalysisReport).filter(AnalysisReport.upload_id == upload_id).first()
    return templates.TemplateResponse("result.html", {
        "request": request, "user": user, "upload": upload,
        "profile": profile, "recommendations": recommendations, "report": report
    })


# ═══════════════════════════════════════════════════
# AUTH ROUTER
# ═══════════════════════════════════════════════════
auth_router = APIRouter(prefix="/api/auth", tags=["Authentication"])

@auth_router.post("/register")
async def register(data: RegisterForm, request: Request, db: Session = Depends(get_db)):
    if db.query(User).filter(User.username == data.username).first():
        raise HTTPException(status_code=400, detail="Username already exists")
    if db.query(User).filter(User.email == data.email).first():
        raise HTTPException(status_code=400, detail="Email already registered")
    if len(data.password) < 6:
        raise HTTPException(status_code=400, detail="Password must be at least 6 characters")
    user = User(
        username=data.username.strip(),
        email=data.email.strip().lower(),
        password_hash=hash_password(data.password),
        full_name=data.full_name or data.username,
    )
    db.add(user)
    db.commit()
    db.refresh(user)
    log_activity(db, "USER_REGISTER", user.id, "user", user.id,
                 f"New user registered: {user.username}", status="success")
    return {"message": "Registration successful", "user_id": user.id}
@auth_router.post("/login")
async def login(data: LoginForm, request: Request, db: Session = Depends(get_db)):
    user = db.query(User).filter(
        User.email == data.email.strip().lower(), User.is_active == True
    ).first()
    if not user or not verify_password(data.password, user.password_hash):
        log_activity(db, "LOGIN_FAILED", None, "user", None,
                     f"Failed login for: {data.email}", status="failure")
        raise HTTPException(status_code=401, detail="Invalid credentials")
    token = create_access_token({"sub": str(user.id), "username": user.username, "role": user.role})
    log_activity(db, "USER_LOGIN", user.id, "user", user.id, f"User logged in: {user.username}")
    response = JSONResponse({"message": "Login successful", "username": user.username, "role": user.role})
    response.set_cookie("access_token", token, httponly=True, samesite="lax", max_age=86400)
    return response

@auth_router.post("/logout")
async def logout(request: Request, db: Session = Depends(get_db)):
    user = get_current_user(request, db)
    if user:
        log_activity(db, "USER_LOGOUT", user.id, "user", user.id, f"User logged out: {user.username}")
    response = JSONResponse({"message": "Logged out"})
    response.delete_cookie("access_token")
    return response

@auth_router.get("/me")
async def me(request: Request, db: Session = Depends(get_db)):
    user = require_user(request, db)
    return {
        "id": user.id,
        "username": user.username,
        "email": user.email,
        "full_name": user.full_name,
        "role": user.role,
        "created_at": str(user.created_at)
    }


# ═══════════════════════════════════════════════════
# ANALYZE ROUTER
# ═══════════════════════════════════════════════════
analyze_router = APIRouter(prefix="/api", tags=["Analysis"])

@analyze_router.post("/upload")
async def upload_and_analyze(
    request: Request,
    file: UploadFile = File(...),
    db: Session = Depends(get_db)
):
    user = require_user(request, db)
    ext = file.filename.rsplit(".", 1)[-1].lower() if "." in file.filename else ""
    if ext not in ALLOWED_EXTENSIONS:
        raise HTTPException(status_code=400, detail=f"Unsupported file. Allowed: {', '.join(ALLOWED_EXTENSIONS)}")
    file_type_map = {"csv": "csv", "xlsx": "excel", "xls": "excel", "json": "json"}
    file_type = file_type_map.get(ext, "csv")
    content = await file.read()
    size_mb = len(content) / (1024 * 1024)
    if size_mb > MAX_FILE_MB:
        raise HTTPException(status_code=400, detail=f"File too large. Max: {MAX_FILE_MB}MB")
    stored_name = f"{uuid.uuid4().hex}_{file.filename}"
    file_path = os.path.join(UPLOAD_DIR, stored_name)
    with open(file_path, "wb") as f:
        f.write(content)
    upload = FileUpload(
        user_id=user.id,
        original_filename=file.filename,
        stored_filename=stored_name,
        file_type=file_type,
        file_size_bytes=len(content),
        file_path=file_path,
        upload_status="processing"
    )
    db.add(upload)
    db.commit()
    db.refresh(upload)
    try:
        profiler = DataProfiler()
        result = profiler.profile(file_path, file_type)
        p = result["profile"]
        col_stats = result["column_stats"]
        dataset_profile = DatasetProfile(
            upload_id=upload.id,
            total_rows=p["total_rows"],
            total_columns=p["total_columns"],
            numeric_columns=p["numeric_columns"],
            categorical_columns=p["categorical_columns"],
            datetime_columns=p["datetime_columns"],
            text_columns=p["text_columns"],
            missing_value_percentage=p["missing_value_percentage"],
            duplicate_row_percentage=p["duplicate_row_percentage"],
            target_column=p.get("target_column"),
            problem_type=p["problem_type"],
            is_imbalanced=p["is_imbalanced"],
            class_count=p.get("class_count"),
            memory_usage_mb=p["memory_usage_mb"],
            profiling_status="completed"
        )
        db.add(dataset_profile)
        db.commit()
        db.refresh(dataset_profile)
        for cs in col_stats:
            db.add(ColumnStatistic(
                dataset_profile_id=dataset_profile.id,
                column_name=cs["column_name"],
                data_type=cs["data_type"],
                inferred_type=cs["inferred_type"],
                missing_count=cs["missing_count"],
                missing_percentage=cs["missing_percentage"],
                unique_count=cs["unique_count"],
                unique_percentage=cs["unique_percentage"],
                mean_value=cs.get("mean_value"),
                std_value=cs.get("std_value"),
                min_value=cs.get("min_value"),
                max_value=cs.get("max_value"),
                median_value=cs.get("median_value"),
                skewness=cs.get("skewness"),
                kurtosis=cs.get("kurtosis"),
                most_frequent_value=cs.get("most_frequent_value"),
            ))
        db.commit()
        algos_raw = db.query(MLAlgorithm, AlgorithmCategory).join(
            AlgorithmCategory, MLAlgorithm.category_id == AlgorithmCategory.id
        ).all()
        algorithms_with_category = []
        for algo, cat in algos_raw:
            d = {c.name: getattr(algo, c.name) for c in algo.__table__.columns}
            d["category_name"] = cat.name
            algorithms_with_category.append(d)
        recommender = MLRecommender()
        ranked = recommender.recommend(algorithms_with_category, p, top_n=5)
        for item in ranked:
            rec = Recommendation(
                upload_id=upload.id,
                user_id=user.id,
                algorithm_id=item["algorithm_id"],
                rank_position=item["rank"],
                confidence_score=item["confidence_score"],
                suitability_score=item["suitability_score"],
            )
            db.add(rec)
            db.commit()
            db.refresh(rec)
            for reason in item["reasons"]:
                db.add(RecommendationReason(
                    recommendation_id=rec.id,
                    reason_type=reason["type"],
                    reason_text=reason["text"],
                    weight=reason.get("weight", 1.0)
                ))
            db.commit()
        preprocessing_tips = recommender.generate_preprocessing_tips(p)
        quality_score = recommender.calculate_data_quality_score(p)
        top_algo = ranked[0]["algorithm_name"] if ranked else "N/A"
        report = AnalysisReport(
            upload_id=upload.id,
            user_id=user.id,
            report_title=f"Analysis Report - {file.filename}",
            report_summary=(
    f"The dataset contains {p['total_rows']:,} rows and {p['total_columns']} columns. "
    f"Problem type: {p['problem_type'].capitalize()}. "
    f"Top recommended algorithm: {top_algo}. "
    f"Data quality score: {float(quality_score)}/100."
),
            data_quality_score=float(quality_score),
            recommended_preprocessing=preprocessing_tips,
            feature_engineering_tips="• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.",
            report_json=make_serializable({"profile": p, "recommendations": ranked})
        )
        db.add(report)
        upload.upload_status = "completed"
        db.commit()
        log_activity(db, "FILE_ANALYZED", user.id, "upload", upload.id, f"File analyzed: {file.filename}")
        return {"message": "Analysis complete", "upload_id": upload.id, "redirect": f"/result/{upload.id}"}
    except Exception as e:
        db.rollback()
        upload.upload_status = "failed"
        upload.error_message = str(e)
        db.commit()
        log_activity(db, "ANALYSIS_FAILED", user.id, "upload", upload.id, str(e), status="failure")
        raise HTTPException(status_code=500, detail=f"Analysis failed: {str(e)}")

@analyze_router.get("/result/{upload_id}/json")
async def get_result_json(upload_id: int, request: Request, db: Session = Depends(get_db)):
    user = require_user(request, db)
    upload = db.query(FileUpload).filter(
        FileUpload.id == upload_id, FileUpload.user_id == user.id
    ).first()
    if not upload:
        raise HTTPException(status_code=404, detail="Not found")
    profile = db.query(DatasetProfile).filter(DatasetProfile.upload_id == upload_id).first()
    col_stats = db.query(ColumnStatistic).filter(
        ColumnStatistic.dataset_profile_id == profile.id
    ).all() if profile else []
    recommendations = db.query(Recommendation).filter(
        Recommendation.upload_id == upload_id
    ).order_by(Recommendation.rank_position).all()
    rec_data = []
    for r in recommendations:
        reasons = db.query(RecommendationReason).filter(
            RecommendationReason.recommendation_id == r.id
        ).all()
        algo = db.query(MLAlgorithm).filter(MLAlgorithm.id == r.algorithm_id).first()
        rec_data.append({
            "rank": r.rank_position,
            "algorithm": algo.name if algo else "",
            "confidence_score": float(r.confidence_score),
            "suitability_score": float(r.suitability_score),
            "reasons": [{"type": rr.reason_type, "text": rr.reason_text} for rr in reasons]
        })
    return {
        "upload": {"id": upload.id, "filename": upload.original_filename, "status": upload.upload_status},
        "profile": {c.name: getattr(profile, c.name) for c in profile._table_.columns} if profile else {},
        "recommendations": rec_data,
    }

@analyze_router.post("/feedback")
async def submit_feedback(data: FeedbackForm, request: Request, db: Session = Depends(get_db)):
    user = require_user(request, db)
    rec = db.query(Recommendation).filter(
        Recommendation.id == data.recommendation_id,
        Recommendation.user_id == user.id
    ).first()
    if not rec:
        raise HTTPException(status_code=404, detail="Recommendation not found")
    existing = db.query(UserFeedback).filter(
        UserFeedback.recommendation_id == data.recommendation_id,
        UserFeedback.user_id == user.id
    ).first()
    if existing:
        existing.rating = data.rating
        existing.feedback_text = data.feedback_text
        existing.was_helpful = data.was_helpful
        existing.actual_algorithm_used = data.actual_algorithm_used
    else:
        db.add(UserFeedback(
            user_id=user.id,
            recommendation_id=data.recommendation_id,
            rating=data.rating,
            feedback_text=data.feedback_text,
            was_helpful=data.was_helpful,
            actual_algorithm_used=data.actual_algorithm_used
        ))
    db.commit()
    log_activity(db, "FEEDBACK_SUBMITTED", user.id, "recommendation", data.recommendation_id)
    return {"message": "Feedback saved"}

@analyze_router.get("/stats")
async def get_user_stats(request: Request, db: Session = Depends(get_db)):
    user = require_user(request, db)
    total = db.query(FileUpload).filter(FileUpload.user_id == user.id).count()
    completed = db.query(FileUpload).filter(
        FileUpload.user_id == user.id, FileUpload.upload_status == "completed"
    ).count()
    reports = db.query(AnalysisReport).filter(AnalysisReport.user_id == user.id).count()
    recent = db.query(FileUpload).filter(
        FileUpload.user_id == user.id
    ).order_by(FileUpload.created_at.desc()).limit(5).all()
    return {
        "total_uploads": total,
        "completed_analyses": completed,
        "total_reports": reports,
        "recent_uploads": [
            {"id": u.id, "filename": u.original_filename,
             "status": u.upload_status, "created_at": str(u.created_at)}
            for u in recent
        ]
    }
    
class ChatMsg(BaseModel):
    message: str  # ✅ ৪টা space দিন

@analyze_router.post("/chat")
async def ml_chat(data: ChatMsg):
    api_key = os.getenv("GROQ_API_KEY")
    url = "https://api.groq.com/openai/v1/chat/completions"
    
    headers = {
        "Authorization": f"Bearer {api_key}",
        "Content-Type": "application/json"
    }
    payload = {
        "model": "llama-3.1-8b-instant",
        "messages": [
            {"role": "system", "content": "You are ML Advisor. Answer ML questions. Bengali হলে বাংলায়, English হলে English এ। Max 150 words. Plain text only."},
            {"role": "user", "content": data.message}
        ],
        "max_tokens": 500
    }
    
    response = requests.post(url, headers=headers, json=payload)
    result = response.json()
    reply = result["choices"][0]["message"]["content"]
    return JSONResponse({"reply": reply})
