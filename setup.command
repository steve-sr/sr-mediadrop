#!/bin/bash
set -e

cd "$(dirname "$0")"

if ! command -v python3 >/dev/null 2>&1; then
  echo "Python 3 no está instalado. Instálalo antes de continuar."
  exit 1
fi

python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

if ! command -v ffmpeg >/dev/null 2>&1; then
  echo ""
  echo "Aviso: FFmpeg no está instalado o no está en PATH."
  echo "En macOS puedes instalarlo con: brew install ffmpeg"
fi

echo ""
echo "Instalación lista. Ejecuta: bash start.command"
