# OpenLane Mixed-Signal Project Structure

## Description

### src/

Contains all synthesizable RTL files used during logic synthesis.

Files

- design_mux.v
- raven_spi.v
- AMUX2_3V_blackbox.v

---

### lef/

Contains the LEF abstraction of the analog hard macro.

Purpose

- Macro dimensions
- Pin geometry
- Routing blockages
- Physical abstraction

---

### lib/

Contains timing information.

Used during

- Static Timing Analysis
- Delay calculation
- Power estimation

---

### config.json

Main OpenLane configuration.

Specifies

- RTL files
- Clock
- LEF
- LIB
- Core utilization
- Placement density

---

### macro.cfg

Specifies macro placement.

Contains

- Coordinates
- Orientation
- Placement information

