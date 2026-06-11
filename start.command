#!/bin/bash
set -e

cd "$(dirname "$0")"

if [ ! -d ".venv" ]; then
  echo "No existe .venv. Ejecuta primero: bash setup.command"
  exit 1
fi

source .venv/bin/activate

( sleep 2; open "http://127.0.0.1:5050" >/dev/null 2>&1 || true ) &
python app.py
