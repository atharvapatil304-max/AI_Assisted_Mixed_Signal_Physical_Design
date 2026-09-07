#!/usr/bin/env bash
set -euo pipefail
BASE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GDS="${1:-$BASE/02_physical_verification/design_mux.gds}"
TOP="${2:-design_mux}"
OUT="$BASE/02_physical_verification/extraction"
mkdir -p "$OUT"
if [[ ! -f "$GDS" ]]; then
  echo "ERROR: GDS not found: $GDS"
  exit 1
fi
echo "Use the exact Magic extraction command from your Week 5 SKY130 flow."
echo "GDS=$GDS TOP=$TOP" | tee "$OUT/run_info.txt"
echo "Do not claim extraction PASS until an extracted SPICE file exists."
