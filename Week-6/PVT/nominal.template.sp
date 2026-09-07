* =========================================================
* WEEK 6 - AMUX2_3V NOMINAL FUNCTIONAL + TIMING TEST
* Generated from the Week 5 transistor-level netlist.
* __SKY130_MODEL__ is replaced automatically by run_nominal.sh.
* =========================================================
.lib "__SKY130_MODEL__" tt
.include "AMUX2_3V_NEW.spice"

.param VDD_VAL=3.3

VDD VDD 0 DC {VDD_VAL}
VSS VSS 0 DC 0

VI0 I0 0 DC 2.0
VI1 I1 0 DC 1.0

* SEL=0 -> I1; SEL=VDD -> I0
VSEL SEL 0 PWL(0 0 4.9n 0 5n {VDD_VAL} 14.9n {VDD_VAL} 15n 0 25n 0)

Xdut I0 I1 SEL OUT VDD VSS amux2_3v_new

.tran 10p 30n

.measure tran tpd_sel_rise TRIG v(SEL) VAL=1.65 RISE=1 TARG v(OUT) VAL=1.5 RISE=1
.measure tran tpd_sel_fall TRIG v(SEL) VAL=1.65 FALL=1 TARG v(OUT) VAL=1.5 FALL=1
.measure tran trise_out TRIG v(OUT) VAL=1.1 RISE=1 TARG v(OUT) VAL=1.9 RISE=1
.measure tran tfall_out TRIG v(OUT) VAL=1.9 FALL=1 TARG v(OUT) VAL=1.1 FALL=1

.control
run
write "../results/nominal/nominal.raw" v(I0) v(I1) v(SEL) v(OUT)
plot v(I0) v(I1) v(SEL) v(OUT)
.endc
.end
