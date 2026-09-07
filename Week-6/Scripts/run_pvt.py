#!/usr/bin/env python3
import os, re, csv, subprocess, pathlib, shutil

BASE = pathlib.Path(__file__).resolve().parents[1]
SPICE = BASE / "01_pvt" / "AMUX2_3V_NEW.spice"
OUT = BASE / "results" / "PVT"
MODEL = next(pathlib.Path(p).resolve() for root in [os.environ.get("PDK_ROOT", str(pathlib.Path.home()))]
            for p in pathlib.Path(root).rglob("sky130.lib.spice"))
CORNERS = ["TT", "SS", "FF"]
VDDS = [3.0, 3.3, 3.6]
TEMPS = [-40, 25, 125]

# SKY130 standard corner names in sky130.lib.spice are normally tt/ss/ff.
corner_token = {"TT":"tt", "SS":"ss", "FF":"ff"}

template = r"""
* Week 6 AMUX2_3V PVT
.lib "__MODEL__" __CORNER__
.include "__SPICE__"
.temp __TEMP__
.param VDDVAL=__VDD__

VDD VDD 0 {VDDVAL}
VSS VSS 0 0

* I0=2 V, I1=1 V. SEL=0 selects I1; SEL=1 selects I0.
VI0 I0 0 2
VI1 I1 0 1
VSEL SEL 0 PULSE(0 {VDDVAL} 5n 100p 100p 10n 20n)

Xdut I0 I1 SEL OUT VDD VSS amux2_3v_new

* 30 ns transient. First switch at 5 ns and second at 15 ns.
.tran 10p 30n

* The selected-output levels are approximately 1 V and 2 V.
* Delay is measured at the 50% output level (1.5 V).
.measure tran tpd_rise TRIG v(SEL) VAL={VDDVAL/2} RISE=1 TARG v(OUT) VAL=1.5 RISE=1
.measure tran tpd_fall TRIG v(SEL) VAL={VDDVAL/2} FALL=1 TARG v(OUT) VAL=1.5 FALL=1
.measure tran trise TRIG v(OUT) VAL=1.1 RISE=1 TARG v(OUT) VAL=1.9 RISE=1
.measure tran tfall TRIG v(OUT) VAL=1.9 FALL=1 TARG v(OUT) VAL=1.1 FALL=1

.control
run
write "__RAW__" v(I0) v(I1) v(SEL) v(OUT)
.endc
.end
"""

rows=[]
for c in CORNERS:
    for v in VDDS:
        for t in TEMPS:
            d=OUT/c/f"{v:.1f}V"/f"{t}C"
            d.mkdir(parents=True, exist_ok=True)
            tb=template.replace("__MODEL__", str(MODEL)).replace("__CORNER__", corner_token[c])
            tb=tb.replace("__SPICE__", str(SPICE)).replace("__TEMP__", str(t)).replace("__VDD__", str(v))
            tb=tb.replace("__RAW__", str(d/"waveform.raw"))
            sp=d/"pvt.sp"
            sp.write_text(tb)
            log=d/"ngspice.log"
            print(f"Running {c} {v} V {t} C")
            p=subprocess.run(["ngspice","-b","-o",str(log),str(sp)], text=True)
            status="PASS" if p.returncode==0 else "FAIL"
            txt=log.read_text(errors="replace") if log.exists() else ""
            def meas(name):
                m=re.search(rf"{re.escape(name)}\s*=\s*([^\s]+)", txt, re.I)
                return m.group(1) if m else "NA"
            rows.append([c,v,t,status,meas("tpd_rise"),meas("tpd_fall"),meas("trise"),meas("tfall")])

csvpath=OUT/"PVT_results.csv"
with csvpath.open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(["Corner","VDD_V","Temperature_C","Simulation","TPD_Rise","TPD_Fall","Rise_Time","Fall_Time"])
    w.writerows(rows)
print(f"Wrote {csvpath}")
