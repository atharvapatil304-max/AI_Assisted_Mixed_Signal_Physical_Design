#!/usr/bin/env python3
import csv, pathlib, math
p=pathlib.Path(__file__).resolve().parents[1]/"results/PVT/PVT_results.csv"
if not p.exists():
    raise SystemExit(f"Missing {p}. Run run_pvt.py first.")
rows=list(csv.DictReader(p.open()))
def num(x):
    try:
        return float(x.rstrip("spnuµmkMG"))
    except:
        return math.nan
print("=== Worst-case candidates ===")
for col in ["TPD_Rise","TPD_Fall","Rise_Time","Fall_Time"]:
    valid=[r for r in rows if not math.isnan(num(r[col]))]
    if valid:
        r=max(valid,key=lambda z:num(z[col]))
        print(f"{col}: {r[col]} @ {r['Corner']}, {r['VDD_V']} V, {r['Temperature_C']} C")
    else:
        print(f"{col}: no numeric data")
