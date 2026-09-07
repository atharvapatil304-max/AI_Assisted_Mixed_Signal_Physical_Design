#!/usr/bin/env bash
set -euo pipefail
BASE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GDS="${1:-$BASE/02_physical_verification/design_mux.gds}"
TOP="${2:-design_mux}"
OUT="$BASE/02_physical_verification/drc"
mkdir -p "$OUT"
if [[ ! -f "$GDS" ]]; then
  echo "ERROR: GDS not found: $GDS"
  echo "Copy the real Week 5 final GDS here or pass its path as argument."
  exit 1
fi
echo "GDS=$GDS" > "$OUT/run_info.txt"
echo "TOP=$TOP" >> "$OUT/run_info.txt"
echo "Run Magic using the same SKY130 extraction/DRC setup used in Week 5."
echo "A generic command cannot guarantee the correct techfile/top-cell setup."
echo "See run_magic_drc.tcl and DRC_Report.md." 
