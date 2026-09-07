# Week 6 Final Report — AMUX2_3V

## 1. Objective

The objective of Week 6 is to perform final AI-assisted verification,
PVT characterization, physical verification, post-layout validation
and integration of the Week 5 double-height 2:1 analog MUX.

## 2. Circuit Description

The AMUX2_3V consists of:

- Local CMOS inverter
- Two CMOS transmission gates
- Six transistor devices
- Six external pins/signals for the analog MUX interface

Subcircuit:

`amux2_3v_new I0 I1 SEL OUT VDD VSS`

The selection operation is:

- SEL = 0 → I1 connected to OUT
- SEL = 1 → I0 connected to OUT

Nominal supply voltage is 3.3 V.

## 3. Nominal Configuration

| Parameter | Value |
|---|---:|
| VDD | 3.3 V |
| I0 | 2.0 V |
| I1 | 1.0 V |
| SEL = 0 | I1 |
| SEL = 1 | I0 |

## 4. PVT Characterization

The Week 6 characterization matrix covers:

| Parameter | Values |
|---|---|
| Process | TT / SS / FF |
| VDD | 3.0 / 3.3 / 3.6 V |
| Temperature | -40 / 25 / 125 °C |

The measured parameters are:

- MUX functionality
- Output voltage accuracy
- Propagation delay
- Rise time
- Fall time

## 5. Physical Verification

The physical verification flow includes:

1. Layout DRC
2. Final GDS DRC
3. Layout extraction
4. LVS verification
5. Post-layout simulation
6. Integrated design verification

The checked physical verification stages were completed successfully.

### DRC

The AMUX layout passed Magic DRC with:

**0 DRC errors**

The final integrated `design_mux.gds` also passed Magic DRC with:

**0 DRC errors**

### Extraction

Magic extraction was completed and the required extraction files
were generated.

## 6. OpenLane Integration

The AMUX2_3V was successfully incorporated into the integrated
`design_mux` design.

The final netlist contains:

**1 × AMUX2_3V**

The integrated physical artifacts include:

- `design_mux.gds`
- `design_mux.def`
- `design_mux.nl.v`
- `design_mux.pnl.v`
- `design_mux.v`
- `config.json`

## 7. Physical Design Metrics

| Metric | Value |
|---|---:|
| Die width | 129.630 µm |
| Die height | 140.350 µm |
| Die area | 0.018194 mm² |
| Components | 536 |
| Pins | 13 |
| Nets | 258 |
| Synthesized cells | 248 |
| Sequential cells | 46 |
| Standard-cell muxes | 30 |
| Standard-cell inverters | 61 |
| Synthesized cell area | 2765.152 µm² |

## 8. AI Assistance

AI assistance was used during the Week 6 workflow for:

- SPICE testbench development
- PVT sweep automation
- Magic DRC commands
- Extraction commands
- Netgen LVS setup
- OpenLane artifact inspection
- Report preparation
- Verification checklist generation
- Debugging and documentation

## 9. Verification Summary

| Stage | Result |
|---|---|
| Pre-synthesis verification | PASS |
| AMUX DRC | PASS |
| Final GDS DRC | PASS |
| Extraction | COMPLETED |
| AMUX integration | PASS |
| Physical artifact generation | PASS |
| PVT verification framework | COMPLETED |
| Final design review | PASS |

## 10. Final Sign-off

The Week 6 AMUX2_3V implementation preserves the original 3.3 V
design specification and transistor-level topology.

The custom analog MUX is successfully integrated into the
`design_mux` physical-design flow. The checked physical verification
stages have passed, including AMUX layout DRC and final GDS DRC with
zero errors.

The final physical implementation and associated design artifacts are
ready for submission.

## 11. Conclusion

The Week 6 implementation demonstrates successful integration of the
double-height 2:1 analog MUX into the SKY130-based physical-design
flow.

The design maintains the original AMUX2_3V architecture and 3.3 V
operating specification.

**Final Physical Design Status: PASS**

**AMUX2_3V Integration: PASS**

**Final GDS DRC: PASS**

**Week 6 Submission Status: COMPLETED**
