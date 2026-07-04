# Error 01 – AMUX2_3V Layout Verification

## Problem

Initially, it appeared that the `AMUX2_3V` analog macro was missing from the final GDS because:

* No standalone `AMUX2_3V.gds` file was available.
* The macro could not be easily identified through visual inspection in KLayout.

---

## Investigation

To verify this, the macro was traced through every stage of the RTL-to-GDS flow:

```text
RTL
↓
Synthesis
↓
Floorplan
↓
Placement
↓
Routing
↓
DEF
↓
Final GDS
```

Each generated netlist and implementation database was checked to confirm whether the `AMUX2_3V` instance was still present.

---

## Findings

The investigation confirmed that the macro was present in:

* RTL
* Synthesized netlist
* Floorplan
* Placement
* Routing
* Routed DEF
* Final GDS

The routed DEF also verified that the macro was physically placed and connected to the required signal nets.

---

## Root Cause

The incorrect assumption was made because the investigation relied mainly on visual inspection and the absence of a separate `AMUX2_3V.gds` file.

In reality, the macro is preserved within the implementation flow and appears in the final layout even without a standalone GDS file.

---

## Resolution

A complete RTL-to-GDS verification confirmed that the `AMUX2_3V` analog macro is successfully preserved and included in the final GDS layout.

**Status:** ✅ Resolved
