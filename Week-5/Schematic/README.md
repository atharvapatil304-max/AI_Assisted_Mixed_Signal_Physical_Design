# 2:1 Analog Multiplexer – Schematic Design

## Overview

This directory contains the transistor-level schematic and pre-layout simulation files for the custom double-height 2:1 analog multiplexer implemented using the SKY130 Process Design Kit (PDK).

The multiplexer is designed using CMOS transmission gates to achieve bidirectional analog signal switching with low ON resistance and full rail-to-rail signal transmission.

---

## Design Specifications

| Parameter | Value |
|-----------|-------|
| Technology | SKY130A |
| Supply Voltage | 1.8 V |
| Inputs | A, B |
| Output | X |
| Select Input | SEL |
| Cell Type | Double-Height Analog Macro |

---

## Files

| File | Description |
|------|-------------|
| mux2x1.spice | Transistor-level schematic |
| mux2x1_tb.spice | ngspice testbench |
| sky130.lib.spice | SKY130 model include |
| truth_table.md | Functional truth table |
| prelayout_results/ | Simulation results |

---

## Simulation Flow

1. Load SKY130 transistor models.
2. Apply VDD = 1.8 V.
3. Generate analog inputs.
4. Toggle SEL between logic 0 and logic 1.
5. Observe output waveform.
6. Measure propagation delay, rise time and fall time.

---

## Expected Behaviour

When SEL = 0

```
Output = A
```

When SEL = 1

```
Output = B
```

The output should always follow the selected input.
