#!/bin/bash
set -e
cd "$(dirname "$0")"

python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt

if [ ! -f .env ]; then
  cp .env.example .env
fi

mkdir -p downloads data

echo "Instalación lista. Ejecuta: bash start.command"
