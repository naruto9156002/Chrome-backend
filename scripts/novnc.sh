#!/bin/bash
set -e
NOVNC_WEB=${NOVNC_WEB:-/usr/share/novnc}
VNC_PORT=${VNC_PORT:-5900}
PORT=${PORT:-8080}
exec websockify --web="$NOVNC_WEB" "$PORT" "localhost:$VNC_PORT"
