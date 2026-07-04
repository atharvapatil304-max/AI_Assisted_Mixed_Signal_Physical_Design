# Log 02 - Macro GDS Investigation

## Locate Macro Files

```bash id="yrld89"
find . -iname "*AMUX*"
```

**Purpose**

* Identify all available abstraction views of the macro

**Result**
Found:

* `AMUX2_3V.v`
* `AMUX2_3V.lef`
* `AMUX2_3V.lib`

No `AMUX2_3V.gds` file was present.

---

## Search for GDS Files

```bash id="tkpj9e"
find . -iname "*.gds"
```

**Purpose**

* List all GDS files generated during the flow

**Result**
Found:

* `design_mux.gds`

---

## Check for External GDS References

```bash id="p8x1ua"
grep -R "\"EXTRA_GDS" .
```

**Purpose**

* Verify whether the flow imports an external macro GDS

**Result**

```json id="j6rmce"
"EXTRA_GDS_FILES": null
```

No external macro GDS was referenced.

---

## Verify Macro Configuration

```bash id="onjlwm"
grep -R "AMUX2_3V" config.json
```

**Purpose**

* Confirm macro-related configuration entries

**Result**
Verified:

* `EXTRA_LEFS`
* `EXTRA_LIBS`
* `FP_PDN_MACRO_HOOKS`

---

## Inspect Layout Hierarchy

**Procedure**

1. Open `design_mux.magic.gds` in KLayout.
2. Browse the cell hierarchy.
3. Check the child cells under `design_mux`.

**Result**

Observed:

* `sky130_fd_sc_hd_*` standard cells

Not observed:

* `AMUX2_3V` as a separate cell instance

---

## Initial Observation

The implementation completed successfully and generated the final GDS using the available Verilog, LEF, and LIB abstractions. No standalone macro GDS file was found or referenced.

---

## Final Observation

This investigation confirmed that the reproduced flow does not include an `AMUX2_3V.gds` file and does not specify one through `EXTRA_GDS_FILES`. At this stage, the macro's representation inside the final layout could not be conclusively determined. A later RTL-to-GDS trace (Week 3) verified that the macro remains present throughout synthesis, floorplanning, placement, routing, and DEF generation, confirming its integration in the final implementation.
