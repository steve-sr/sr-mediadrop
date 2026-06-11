@echo off
cd /d %~dp0

if not exist .venv (
  echo No existe .venv. Ejecuta primero: setup.bat
  pause
  exit /b 1
)

call .venv\Scripts\activate
python app.py
pause
