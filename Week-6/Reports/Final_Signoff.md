# AMUX2_3V — Week 6 Final Sign-off

## Design Information

- Design: `AMUX2_3V_NEW`
- Technology: SKY130
- Supply: 3.3 V
- Subcircuit: `amux2_3v_new I0 I1 SEL OUT VDD VSS`
- Topology: Local inverter with two CMOS transmission gates
- Selection:
  - SEL = 0 → I1
  - SEL = 1 → I0
- Nominal inputs:
  - VDD = 3.3 V
  - I0 = 2.0 V
  - I1 = 1.0 V

## Week 6 Verification Summary

| Verification | Status |
|---|---|
| Pre-synthesis check | PASS |
| AMUX layout DRC | PASS |
| Final GDS DRC | PASS |
| Layout extraction | COMPLETED |
| AMUX integration | PASS |
| Integrated physical artifacts | PASS |
| PVT characterization framework | COMPLETED |
| AI-assisted verification documentation | COMPLETED |
| Final physical-design review | PASS |

## Physical Design Results

- AMUX layout DRC: **PASS — 0 errors**
- Final `design_mux.gds` DRC: **PASS — 0 errors**
- Layout extraction: **COMPLETED**
- AMUX integration: **PASS**
- Integrated AMUX instances: **1**
- Pre-synthesis check: **PASS — 0 problems**

## Physical Design Metrics

- Die size: **129.630 µm × 140.350 µm**
- Die area: **0.018194 mm²**
- Components: **536**
- Pins: **13**
- Nets: **258**
- Synthesized cells: **248**
- Sequential cells: **46**
- Standard-cell muxes: **30**
- Standard-cell inverters: **61**
- Reported synthesized cell area: **2765.152 µm²**

## PVT Test Plan

The Week 6 characterization matrix covers:

- Process corners: TT, SS, FF
- Supply voltages: 3.0 V, 3.3 V, 3.6 V
- Temperatures: -40 °C, 25 °C, 125 °C
- Measurements:
  - MUX functionality
  - Output voltage accuracy
  - Propagation delay
  - Rise time
  - Fall time

## Sign-off Statement

The AMUX2_3V physical implementation has been integrated into the
`design_mux` design and the checked physical verification stages have
been completed successfully.

The final GDS has passed the checked Magic DRC with zero errors.
The custom AMUX is present in the integrated netlist and the required
physical-design artifacts are available.

The original 3.3 V design specification, transistor topology, pin
configuration and selection behavior are preserved.

## Final Status

**AMUX2_3V Week 6 physical-design verification: PASS**

**Final GDS DRC: PASS**

**AMUX integration: PASS**

**Pre-synthesis verification: PASS**
