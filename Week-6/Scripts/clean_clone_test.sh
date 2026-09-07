#!/usr/bin/env bash
set -euo pipefail
REPO_URL="${1:?Usage: $0 <github-url>}"
TARGET="${2:-$HOME/Week6_clean_clone}"
rm -rf "$TARGET"
mkdir -p "$TARGET"
git clone "$REPO_URL" "$TARGET/repo"
cd "$TARGET/repo"
bash scripts/check_environment.sh
bash scripts/run_nominal.sh
python3 scripts/run_pvt.py
echo "Clean-clone commands completed. Inspect logs and physical verification results."
