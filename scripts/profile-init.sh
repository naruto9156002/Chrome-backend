#!/bin/bash
set -e
PROFILE_DIR=${PROFILE_DIR:-$HOME/chrome-profile}
mkdir -p "$PROFILE_DIR"
echo "Profile initialized at $PROFILE_DIR"
