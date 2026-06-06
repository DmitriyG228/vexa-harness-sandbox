#!/usr/bin/env bash
set -euo pipefail

ROOT=$(git rev-parse --show-toplevel)
README="$ROOT/README.md"

if [ ! -f "$README" ]; then
  echo "FAIL: README.md not found at $README"
  exit 1
fi

first_non_blank=$(awk 'NF{print; exit}' "$README")

if [[ "$first_non_blank" == "# "* ]]; then
  echo "ok: README.md first non-blank line starts with '# '"
else
  echo "FAIL: README.md first non-blank line does not start with '# '"
  exit 1
fi
