#!/bin/bash
cd "$(dirname "$0")"

if [ ! -d .venv ]; then
  echo "No existe .venv. Ejecuta primero: bash setup.command"
  exit 1
fi

source .venv/bin/activate
python app.py
