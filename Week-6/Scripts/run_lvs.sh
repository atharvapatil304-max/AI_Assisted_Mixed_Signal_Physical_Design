#!/usr/bin/env bash
set -euo pipefail
BASE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
EXTRACTED="${1:-$BASE/02_physical_verification/extraction/extracted.spice}"
REFERENCE="${2:-$BASE/02_physical_verification/reference.spice}"
OUT="$BASE/02_physical_verification/lvs"
mkdir -p "$OUT"
if [[ ! -f "$EXTRACTED" || ! -f "$REFERENCE" ]]; then
  echo "ERROR: both extracted and reference SPICE netlists are required."
  echo "Extracted: $EXTRACTED"
  echo "Reference: $REFERENCE"
  exit 1
fi
echo "Run Netgen with the exact SKY130 setup/cell names from Week 5."
echo "Do not claim LVS PASS until Netgen reports a match."
