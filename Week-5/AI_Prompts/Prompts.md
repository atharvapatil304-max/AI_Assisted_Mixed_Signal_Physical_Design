# AI Prompts Used

## Prompt 1
Design a transistor-level 2:1 analog multiplexer using SKY130 transmission gates. Generate the complete SPICE netlist with VPWR and VGND supplies.

## Prompt 2
Using the generated SPICE netlist, create a Magic layout from scratch. Do not copy the existing AMUX2_3V layout. Create a new double-height standard cell with correct transistor placement, legal wells, continuous power rails, and OpenLane-compatible pin locations.

## Prompt 3
Verify that the generated layout satisfies SKY130 design rules and produces zero Magic DRC violations.

## Prompt 4
Extract the layout using Magic and generate the extracted SPICE netlist.

## Prompt 5
Run Netgen LVS between the schematic and extracted layout until both netlists match.

## Prompt 6
Generate LEF, GDS, Liberty, SPEF, DEF, and Verilog blackbox views.

## Prompt 7
Replace the original AMUX2_3V macro in OpenLane and complete the RTL-to-GDS flow.

## Prompt 8
Run post-layout ngspice simulation using the extracted parasitic netlist and compare against the pre-layout simulation.

## Prompt 9
Generate a comparison of area, delay, rise time, fall time, DRC, LVS and routing quality between the original and new macro.
