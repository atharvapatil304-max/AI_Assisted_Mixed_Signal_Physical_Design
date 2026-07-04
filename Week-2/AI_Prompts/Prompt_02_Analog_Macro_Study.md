# Prompt 02 – Analog Macro Analysis

## Prompt

Analyze the **AMUX2_3V** analog macro and summarize its role in the mixed-signal physical design.

### Tasks

1. Identify all available abstraction views associated with the macro.
2. Explain the purpose of each view:
   - Verilog (.v)
   - LEF (.lef)
   - LIB (.lib)
   - GDSII (.gds)
   - Magic layout (.mag)
3. Extract and classify all macro pins into:
   - Signal pins
   - Power pins
   - Ground pins
4. Describe how each abstraction is used during the OpenLane implementation flow.
5. Explain the consequences of a missing abstraction file on synthesis, floorplanning, placement, routing, timing analysis, and final layout generation.

### Output

- Macro abstraction summary table
- Pin classification table
- OpenLane integration workflow
- Missing abstraction impact analysis
