#!/usr/bin/env bash
# README_HAS_H1: assert README.md at repo root has a top-level H1.
set -euo pipefail
if grep -qE '^# ' README.md; then
  exit 0
fi
echo "README_HAS_H1: README.md is missing a top-level H1 (line starting with '# ')." >&2
exit 1
