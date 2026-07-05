#!/bin/bash
set -e
export DISPLAY=${DISPLAY:-:99}
exec x11vnc -display "$DISPLAY" -forever -shared -nopw -rfbport 5900
