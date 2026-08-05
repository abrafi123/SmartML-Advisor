"""
SmartML Advisor - Main Application
FastAPI + MySQL + Jinja2 Templates
"""
import os
from fastapi import FastAPI, Request
from fastapi.staticfiles import StaticFiles
from fastapi.templating import Jinja2Templates
from fastapi.responses import HTMLResponse
from fastapi.middleware.cors import CORSMiddleware
from dotenv import load_dotenv

from database import check_db_connection
from routers import auth_router, page_router, analyze_router

load_dotenv()

app = FastAPI(
    title="SmartML Advisor",
    description="Intelligent ML Algorithm Recommender System",
    version="1.0.0",
    docs_url="/api/docs",
    redoc_url="/api/redoc"
)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

os.makedirs("uploads", exist_ok=True)
os.makedirs("static", exist_ok=True)

app.mount("/static", StaticFiles(directory="static"), name="static")

app.include_router(page_router)
app.include_router(auth_router)
app.include_router(analyze_router)


@app.on_event("startup")
async def startup_event():
    print("=" * 50)
    print("  SmartML Advisor v1.0.0 Starting...")
    print("=" * 50)
    if check_db_connection():
        print("  ✅ Database connected successfully")
    else:
        print("  ❌ Database connection failed - check .env file")
    print(f"  🚀 Server running at http://localhost:{os.getenv('PORT', '8000')}")
    print("=" * 50)


@app.get("/health")
async def health():
    return {"status": "ok", "app": "SmartML Advisor", "version": "1.0.0"}


if __name__ == "__main__":
    import uvicorn
    uvicorn.run(
        "main:app",
        host=os.getenv("HOST", "0.0.0.0"),
        port=int(os.getenv("PORT", "8000")),
        reload=True
    )
