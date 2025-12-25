#!/bin/sh
#
# Use this script to run your program LOCALLY.
#
# Note: Changing this script WILL NOT affect how Vizh.ai runs your program.
# Vizh.ai uses .vizh/run.sh instead.
#

set -e

cd "$(dirname "$0")"
exec bun run src/index.ts "$@"
