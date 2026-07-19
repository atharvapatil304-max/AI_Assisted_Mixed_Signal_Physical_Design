# Week 5 – Design Goal

## Objective

The objective of this task is to replace the placeholder **AMUX2_3V** analog multiplexer used in the mixed-signal design with a newly designed **double-height 2:1 analog multiplexer** implemented using the SKY130 Process Design Kit (PDK).

Unlike the placeholder cell, the new layout is created completely from scratch using Magic Layout Editor with AI assistance. The complete custom design flow includes schematic verification, physical layout generation, DRC cleanup, LVS verification, parasitic extraction, post-layout simulation, and OpenLane integration.

## Design Requirements

- Design a transistor-level 2:1 analog multiplexer.
- Use SKY130 NMOS and PMOS devices.
- Create a completely new double-height layout.
- Maintain legal pin placement.
- Create continuous power rails.
- Support OpenLane routing.
- Pass Magic DRC without violations.
- Achieve Netgen LVS match.
- Extract parasitics.
- Perform post-layout ngspice simulation.
- Generate all required macro views.
- Replace the existing AMUX2_3V macro in OpenLane.
- Complete full RTL-to-GDS implementation.

## Expected Deliverables

- SPICE schematic
- Testbench
- Magic layout
- LEF
- GDS
- Extracted SPICE
- Liberty (.lib)
- DEF
- SPEF
- Verilog Blackbox
- DRC report
- LVS report
- OpenLane integration
- Comparison with original AMUX2_3V

## Success Criteria

The final macro should:

- Pass DRC
- Pass LVS
- Function correctly after extraction
- Integrate successfully into OpenLane
- Support legal routing
- Produce clean GDS
- Demonstrate equal or better area and timing than the placeholder macro
