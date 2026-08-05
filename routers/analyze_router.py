from fastapi import APIRouter, UploadFile, File, Request
from fastapi.templating import Jinja2Templates
from fastapi.responses import HTMLResponse
import shutil, os

templates = Jinja2Templates(directory="templates")
analyze_router = APIRouter(prefix="/analyze")

@analyze_router.post("/upload")
async def upload_file(request: Request, file: UploadFile = File(...)):
    file_path = f"uploads/{file.filename}"
    with open(file_path, "wb") as buffer:
        shutil.copyfileobj(file.file, buffer)
    
    # TODO: ML analysis করুন
    return templates.TemplateResponse("result.html", {
        "request": request,
        "filename": file.filename,
        "message": "File uploaded successfully"
    })