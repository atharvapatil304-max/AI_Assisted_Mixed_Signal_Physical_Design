# OpenLane / Physical Integration Report

## Existing artifacts inspected

The following Week 5 integrated artifacts were present:
- `design_mux.gds`
- `design_mux.def`
- `design_mux.nl.v`
- `design_mux.pnl.v`
- `design_mux.v`
- `config.json`

## Verified integration evidence

`design_mux.nl.v` contains one custom AMUX instance:

```verilog
AMUX2_3V AMUX2_3V (.select(select),
    .I0(I0),
    .out(out),
    .I1(I1));
```

DEF:
- Components: 536
- Pins: 13
- Nets: 258
- Die: 129.630 µm × 140.350 µm

Final GDS Magic DRC: **PASS — 0 errors**.

