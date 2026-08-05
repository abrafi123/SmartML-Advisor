from fastapi import APIRouter, Request
from fastapi.templating import Jinja2Templates
from fastapi.responses import HTMLResponse

templates = Jinja2Templates(directory="templates")
page_router = APIRouter()

@page_router.get("/", response_class=HTMLResponse)
async def index(request: Request):
    return templates.TemplateResponse("index.html", {"request": request})

@page_router.get("/dashboard", response_class=HTMLResponse)
async def dashboard(request: Request):
    return templates.TemplateResponse("dashboard.html", {"request": request})

@page_router.get("/upload", response_class=HTMLResponse)
async def upload(request: Request):
    return templates.TemplateResponse("upload.html", {"request": request})

@page_router.get("/result", response_class=HTMLResponse)
async def result(request: Request):
    return templates.TemplateResponse("result.html", {"request": request})

@page_router.get("/history", response_class=HTMLResponse)
async def history(request: Request):
    return templates.TemplateResponse("history.html", {"request": request})

@page_router.get("/algorithms", response_class=HTMLResponse)
async def algorithms(request: Request):
    return templates.TemplateResponse("algorithms.html", {"request": request})