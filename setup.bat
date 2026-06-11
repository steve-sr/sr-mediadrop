@echo off
cd /d %~dp0

python -m venv .venv
call .venv\Scripts\activate.bat
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

where ffmpeg >nul 2>nul
if errorlevel 1 (
  echo.
  echo Aviso: FFmpeg no esta instalado o no esta en PATH.
  echo En Windows puedes instalarlo con: winget install Gyan.FFmpeg
)

echo.
echo Instalacion lista. Ejecuta start.bat
pause
