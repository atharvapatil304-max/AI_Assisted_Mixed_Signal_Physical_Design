# AI Assistance Log — Week 6

AI assistance was used for command sequencing, tool-output interpretation, debugging, and report organization.

## Prompt 1 — Nominal ngspice
Generate an ngspice testbench for the supplied SKY130 AMUX2_3V_NEW transistor-level 2:1 analog MUX. Pins: I0 I1 SEL OUT VDD VSS. Test both select states and measure propagation delay, rise time and fall time.

**Actual outcome:** generated testbench did not run because the supplied `03v3` model identifiers were not available as usable model names in the installed SKY130A environment.

## Prompt 2 — PVT automation
Generate a Python script to sweep TT/SS/FF, 3.0/3.3/3.6 V, and -40/25/125 °C.

**Actual outcome:** script template was prepared, but no valid numerical PVT matrix was obtained.

## Prompt 3 — Physical verification
Generate Magic DRC, extraction and Netgen LVS workflow.

**Actual outcome:** Magic DRC passed with 0 errors; extraction completed; LVS failed and was retained as a real result.

## Prompt 4 — Reproducibility
Generate a clean-clone verification workflow.

**Actual outcome:** workflow template exists, but a verified clean-clone run was not completed.

## Debugging principle
No numerical PVT/timing result was fabricated when tool/model compatibility prevented a valid simulation.
