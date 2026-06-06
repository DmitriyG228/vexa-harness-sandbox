#!/usr/bin/env bash
set -euo pipefail
python3 -c "import json; json.load(open('tests3/checks/registry.json'))" || { echo "registry.json is not valid JSON"; exit 1; }
