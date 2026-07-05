#!/bin/bash
set -e
export DISPLAY=${DISPLAY:-:99}
exec chromium-browser   --no-sandbox   --disable-dev-shm-usage   --disable-gpu   --start-maximized   about:blank
