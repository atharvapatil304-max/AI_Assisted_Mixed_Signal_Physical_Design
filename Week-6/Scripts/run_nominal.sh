#!/usr/bin/env bash
set -euo pipefail
BASE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$BASE/01_pvt"

MODEL="$(find "${PDK_ROOT:-$HOME}" -type f -name sky130.lib.spice 2>/dev/null | head -1 || true)"
if [[ -z "$MODEL" ]]; then
  echo "ERROR: sky130.lib.spice not found."
  echo "Run: find ~/.volare -type f -name sky130.lib.spice 2>/dev/null"
  exit 1
fi

MODEL_ESCAPED="${MODEL//\\/\\\\}"
sed "s|__SKY130_MODEL__|$MODEL_ESCAPED|g" nominal.template.sp > nominal.sp

mkdir -p "$BASE/results/nominal"
ngspice -b -o "$BASE/results/nominal/nominal.log" nominal.sp
echo "Nominal simulation finished."
echo "Log: $BASE/results/nominal/nominal.log"
