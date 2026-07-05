#!/bin/bash

export DISPLAY=:99

Xvfb :99 -screen 0 1366x768x24 &

sleep 2

openbox &

./chromium.sh &

x11vnc \
-display :99 \
-forever \
-shared \
-nopw \
-rfbport 5900 &

websockify \
--web=/usr/share/novnc \
${PORT} \
localhost:5900