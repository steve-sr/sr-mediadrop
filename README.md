# SR MediaDrop

Aplicación web local para descargar video y audio desde enlaces compatibles con `yt-dlp`.

Está pensada para uso local en una computadora propia. No requiere servidor externo.

## Funciones

- Interfaz web responsive.
- PIN de acceso.
- Descarga individual.
- Cola de descargas.
- Historial local.
- Progreso en tiempo real.
- Soporte para video, MP3, TikTok e Instagram/Reels.
- Archivos locales en `downloads/`.

## Requisitos

- Python 3.10 o superior.
- FFmpeg instalado en el sistema.

### Instalar FFmpeg

macOS:

```bash
brew install ffmpeg
```

Windows:

```bat
winget install Gyan.FFmpeg
```

## Instalación en macOS

Desde la carpeta del proyecto:

```bash
bash setup.command
bash start.command
```

Luego abre:

```text
http://127.0.0.1:5050
```

## Instalación en Windows

Desde la carpeta del proyecto:

```bat
setup.bat
start.bat
```

Luego abre:

```text
http://127.0.0.1:5050
```

## Acceder desde el celular

La computadora y el celular deben estar en la misma red WiFi.

En macOS, obtén la IP local con:

```bash
ipconfig getifaddr en0
```

En Windows, obtén la IP local con:

```bat
ipconfig
```

Luego abre en el celular:

```text
http://IP-DE-TU-COMPUTADORA:5050
```

Ejemplo:

```text
http://192.168.1.25:5050
```

## PIN

El PIN por defecto es:

```text
1234
```

Puedes cambiarlo con variable de entorno:

macOS:

```bash
MEDIADROP_PIN=2580 bash start.command
```

Windows PowerShell:

```powershell
$env:MEDIADROP_PIN="2580"; .\start.bat
```

También puedes cambiar el valor por defecto en `app.py`.

## Carpetas locales

La app crea automáticamente:

```text
downloads/
data/
```

Estas carpetas no deben subirse a GitHub.

## Notas

Usa esta herramienta solo con contenido que tengas derecho a descargar. Algunas plataformas pueden limitar o bloquear solicitudes de forma temporal.
