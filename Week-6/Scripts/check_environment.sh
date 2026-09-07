#!/usr/bin/env bash
set +e
echo "=== Week 6 environment check ==="
echo "ngspice:"
ngspice --version 2>&1 | head -2
echo
echo "magic:"
magic -version 2>&1 | head -2
echo
echo "netgen:"
netgen -version 2>&1 | head -2
echo
echo "openlane:"
openlane --version 2>&1 | head -3
echo
echo "Environment:"
echo "PDK_ROOT=${PDK_ROOT:-<not set>}"
echo "PDK=${PDK:-<not set>}"
echo
echo "SKY130 model search:"
find "${PDK_ROOT:-$HOME}" -type f -name sky130.lib.spice 2>/dev/null | head -20
