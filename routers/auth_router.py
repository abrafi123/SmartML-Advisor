from fastapi import APIRouter, Request, Form
from fastapi.templating import Jinja2Templates
from fastapi.responses import HTMLResponse, RedirectResponse

templates = Jinja2Templates(directory="templates")
auth_router = APIRouter(prefix="/auth")

@auth_router.get("/login", response_class=HTMLResponse)
async def login_page(request: Request):
    return templates.TemplateResponse("login.html", {"request": request})

@auth_router.post("/login")
async def login(request: Request, email: str = Form(...), password: str = Form(...)):
    # TODO: DB check করুন
    return RedirectResponse(url="/dashboard", status_code=302)

@auth_router.get("/register", response_class=HTMLResponse)
async def register_page(request: Request):
    return templates.TemplateResponse("register.html", {"request": request})

@auth_router.post("/register")
async def register(request: Request, email: str = Form(...), password: str = Form(...)):
    # TODO: DB তে save করুন
    return RedirectResponse(url="/auth/login", status_code=302)

@auth_router.get("/logout")
async def logout():
    return RedirectResponse(url="/", status_code=302)