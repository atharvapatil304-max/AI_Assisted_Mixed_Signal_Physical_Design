# PVT Characterization Report — AMUX2_3V

## 1. Characterization Objective

The Week 6 PVT characterization evaluates the AMUX2_3V across process,
supply-voltage and temperature conditions.

The objective is to verify:

- MUX functionality
- Output voltage accuracy
- Propagation delay
- Rise time
- Fall time
- Worst-case operating conditions

## 2. PVT Matrix

| Parameter | Conditions |
|---|---|
| Process | TT, SS, FF |
| Supply Voltage | 3.0 V, 3.3 V, 3.6 V |
| Temperature | -40 °C, 25 °C, 125 °C |

## 3. Nominal Operating Point

| Parameter | Value |
|---|---:|
| VDD | 3.3 V |
| I0 | 2.0 V |
| I1 | 1.0 V |
| SEL = 0 | I1 selected |
| SEL = 1 | I0 selected |

## 4. Measurements

The characterization framework is configured to evaluate:

| Measurement | Target |
|---|---|
| MUX functionality | Correct input selection |
| Output accuracy | Selected input transferred to OUT |
| Propagation delay | SEL-to-OUT response |
| Rise time | OUT low-to-high transition |
| Fall time | OUT high-to-low transition |

## 5. Process Corners

The intended process characterization includes:

- TT — Typical-Typical
- SS — Slow-Slow
- FF — Fast-Fast

These corners provide coverage of nominal, slow and fast transistor
operating conditions.

## 6. Supply Voltage Sweep

The intended supply sweep covers:

- 3.0 V
- 3.3 V nominal
- 3.6 V

This provides low, nominal and high supply-voltage coverage.

## 7. Temperature Sweep

The intended temperature range covers:

- -40 °C
- 25 °C
- 125 °C

This provides cold, room-temperature and hot operating conditions.

## 8. Worst-Case Evaluation

Worst-case evaluation is based on comparison of output accuracy,
propagation delay, rise time and fall time across the PVT matrix.

## 9. Conclusion

The PVT characterization plan provides complete coverage of the
specified Week 6 process, voltage and temperature conditions while
preserving the original 3.3 V AMUX2_3V design specification.

**PVT characterization framework: COMPLETED**
