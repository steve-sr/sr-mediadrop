@echo off
cd /d %~dp0

if not exist .venv (
  echo No existe .venv. Ejecuta primero setup.bat
  pause
  exit /b 1
)

call .venv\Scripts\activate.bat
start "" http://127.0.0.1:5050
python app.py
pause
