# Prompt 06 - Power Connectivity Debugging

## Prompt

A mixed-signal OpenLane design reports power connectivity warnings for the `AMUX2_3V` macro.

Review the following:

1. Common causes of power connection warnings.
2. Correct `FP_PDN_MACRO_HOOKS` configuration.
3. LEF definitions for `VPWR` and `VGND`.
4. Consistency of power-net names across the design.
5. PDN generation settings.
6. How OpenROAD maps macro power pins to the top-level PDN.
7. A structured debugging procedure.

Return only:

* Root-cause checklist
* Verification checklist
* Debug workflow
* Recommended fixes
