#!/usr/bin/env bash
set -euo pipefail

if [ ! -s "README.md" ]; then
  echo "FAIL: README.md is empty or does not exist"
  exit 1
fi
exit 0
