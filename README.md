# SR MediaDrop

Aplicación web local para descargar video o audio desde enlaces compatibles con `yt-dlp`.

## Requisitos

- Python 3.10 o superior
- FFmpeg instalado en el equipo

## Instalación rápida

### macOS

```bash
bash setup.command
bash start.command
```

### Windows

```bat
setup.bat
start.bat
```

Luego abre:

```text
http://127.0.0.1:5050
```

## Configuración

La primera instalación crea un archivo `.env` a partir de `.env.example`.

Variables disponibles:

```env
MEDIADROP_PIN=1234
MEDIADROP_SECRET_KEY=change-this-local-secret
MEDIADROP_DOWNLOAD_DIR=downloads
PORT=5050
```

Recomendado: cambia `MEDIADROP_PIN` y `MEDIADROP_SECRET_KEY` en tu archivo `.env` local.

También puedes abrir el panel **Configuración** dentro de la app para cambiar la carpeta de descargas.

## Estructura

```text
app.py
requirements.txt
templates/
static/
setup.command
start.command
setup.bat
start.bat
.env.example
.gitignore
```

## Archivos que no se suben a Git

El proyecto ignora automáticamente:

```text
.env
.venv/
downloads/
data/
build/
dist/
__pycache__/
```

No subas cookies, descargas, claves ni archivos personales.
