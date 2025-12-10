#!/bin/sh
#
# Compiles your code. This script is run before each test.
#
set -e


cd "$(dirname "$0")/.."

if [ ! -e "node_modules" ]; then
    echo "Installing dependencies..."
    npm install --prefer-offline --no-audit --no-fund --progress=false --loglevel=error 2>/dev/null || true
fi


if [ -d "src" ]; then
    echo "Compiling..."
    npm run build
else
    echo "No sourced source directory found, skipping build."
fi

