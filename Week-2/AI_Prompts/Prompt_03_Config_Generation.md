# Prompt 03 - OpenLane Configuration

## Prompt

Generate a minimal OpenLane configuration for the following:

* Design: `design_mux`
* Technology: `SKY130A`
* RTL: `design_mux.v`, `raven_spi.v`
* Analog macro: `AMUX2_3V`

Include:

* `DESIGN_NAME`
* `VERILOG_FILES`
* `CLOCK_PORT`
* `CLOCK_PERIOD`
* `FP_CORE_UTIL`
* `PL_TARGET_DENSITY`
* `EXTRA_LEFS`
* `EXTRA_LIBS`
* `FP_PDN_MACRO_HOOKS`

Return only valid JSON.
