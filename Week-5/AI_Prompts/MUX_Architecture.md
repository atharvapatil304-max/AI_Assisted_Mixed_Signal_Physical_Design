# Double-Height Analog 2:1 MUX Architecture

## Overview

The designed cell is a transistor-level analog multiplexer capable of selecting one of two analog input signals and routing it to a single output.

```text
      A ----\
             \
              >---- X
             /
      B ----/

        ^
        |
       SEL
```

## Working Principle

The multiplexer operates using complementary transmission gates.

- **SEL = 0:** Input A is connected to Output X while Input B is isolated.
- **SEL = 1:** Input B is connected to Output X while Input A is isolated.

## Transmission Gate

Each transmission gate consists of:

- One NMOS transistor
- One PMOS transistor

Advantages:

- Rail-to-rail signal transfer
- Low ON resistance
- Bidirectional operation
- Reduced signal degradation

## Double-Height Layout

Benefits:

- Better routing resources
- Easier power rail implementation
- Improved pin accessibility
- Better OpenLane compatibility
- Reduced routing congestion

## Pin List

| Pin | Description |
|------|-------------|
| A | Input 0 |
| B | Input 1 |
| SEL | Select |
| X | Output |
| VPWR | Power |
| VGND | Ground |

## Verification Flow

SPICE → Pre-layout Simulation → Magic Layout → DRC → Extraction → LVS → Post-layout Simulation → Macro Generation → OpenLane Integration → Final PNR
