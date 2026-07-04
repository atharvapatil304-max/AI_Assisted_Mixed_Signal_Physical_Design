# Prompt 01 – RTL to GDS Investigation

## Objective

Trace the `AMUX2_3V` analog macro through every stage of the mixed-signal RTL-to-GDS implementation flow to determine whether the macro is preserved throughout synthesis, floorplanning, placement, routing, DEF generation, and final GDS generation.

---

# Step-by-Step Investigation

The goal is **not** to assume the macro exists at every stage, but to verify it using the generated implementation files.

Proceed sequentially. Do not continue until the current stage has been verified.

---

# Stage 1 — RTL Verification

## Purpose

Verify that the analog macro is instantiated in the original RTL.

### File to inspect

```
design_mux.v
```

### Command

```bash
grep -n "AMUX2_3V" design_mux.v
```

### Expected Output

Example:

```verilog
AMUX2_3V u_amux (
```

### Interpretation

- Instance found → Macro exists in RTL.
- No match → Macro is missing before synthesis.

---

# Stage 2 — Yosys Synthesis

## Purpose

Determine whether Yosys preserved the macro during synthesis.

### File to inspect

```
runs/<RUN_NAME>/results/synthesis/design_mux.nl.v
```

(or the synthesized Verilog netlist produced by your flow)

### Command

```bash
grep -n "AMUX2_3V" runs/*/results/synthesis/design_mux.nl.v
```

If the exact path is unknown:

```bash
find runs -name "*.v" | xargs grep "AMUX2_3V"
```

### Expected Output

Example

```verilog
AMUX2_3V u_amux (
```

### Interpretation

- Instance still present → Yosys treated it as a black-box macro.
- Instance missing → Macro was optimized away or incorrectly synthesized.

---

# Stage 3 — Floorplanning

## Purpose

Verify that OpenROAD imported the macro into the physical database.

### File to inspect

```
runs/<RUN_NAME>/results/floorplan/*.odb
```

### Command

```bash
openroad
```

Inside OpenROAD:

```tcl
read_db runs/<RUN_NAME>/results/floorplan/*.odb

foreach inst [get_db insts] {
    puts "[get_db $inst .name] [get_db $inst .master.name]"
}
```

Alternative:

```tcl
foreach inst [get_db insts] {
    if {[get_db $inst .master.name] == "AMUX2_3V"} {
        puts $inst
    }
}
```

### Expected Output

```
u_amux AMUX2_3V
```

### Interpretation

- Macro listed → Imported successfully.
- Missing → Floorplanner did not load the macro.

---

# Stage 4 — Global Placement

## Purpose

Verify that the macro survives placement.

### File to inspect

```
runs/<RUN_NAME>/results/placement/*.odb
```

### Command

```bash
openroad
```

```tcl
read_db runs/<RUN_NAME>/results/placement/*.odb

foreach inst [get_db insts] {
    if {[get_db $inst .master.name] == "AMUX2_3V"} {
        puts "$inst"
        puts [get_db $inst .location]
    }
}
```

### Expected Output

Example

```
u_amux
(320.00 410.00)
```

### Interpretation

- Coordinates reported → Macro placed successfully.
- No instance → Removed before or during placement.

---

# Stage 5 — Detailed Routing

## Purpose

Verify that routing preserves the macro.

### File to inspect

```
runs/<RUN_NAME>/results/routing/*.odb
```

### Command

```bash
openroad
```

```tcl
read_db runs/<RUN_NAME>/results/routing/*.odb

foreach inst [get_db insts] {
    if {[get_db $inst .master.name] == "AMUX2_3V"} {
        puts "$inst"
    }
}
```

### Optional

Inspect connected nets.

```tcl
foreach net [get_db nets] {
    puts [get_db $net .name]
}
```

### Interpretation

- Macro still exists → Routing preserved the macro.
- Missing → Unexpected removal during routing.

---

# Stage 6 — DEF Verification

## Purpose

Verify that the exported DEF contains the macro placement.

### File to inspect

```
runs/<RUN_NAME>/results/routing/design.def
```

### Command

```bash
grep -n "AMUX2_3V" runs/*/results/routing/*.def
```

If searching by instance name:

```bash
grep -n "u_amux" runs/*/results/routing/*.def
```

### Expected Output

Example

```
- u_amux AMUX2_3V + PLACED ( 3200 4100 ) N ;
```

### Interpretation

- Entry present → DEF exported the macro correctly.
- Missing → DEF generation omitted the macro.

---

# Stage 7 — Final GDS Verification

## Purpose

Verify that the macro appears in the generated layout.

### File to inspect

```
runs/<RUN_NAME>/results/final/gds/design_mux.magic.gds
```

or

```
design_mux.gds
```

### Method 1 — Using Magic

```bash
magic
```

Inside Magic

```tcl
gds read design_mux.magic.gds
cellname list
```

### Expected Output

A list containing

```
AMUX2_3V
```

Open the top cell.

```tcl
load design_mux
```

Search the layout hierarchy.

```tcl
select top cell
expand
```

Zoom into the macro location and visually confirm its geometry.

---

### Method 2 — KLayout

Open

```
design_mux.magic.gds
```

Use

```
Hierarchy Browser
```

Search for

```
AMUX2_3V
```

or

```
u_amux
```

### Interpretation

- Cell present → Macro exists in final GDS.
- Cell absent → Macro was excluded during GDS generation.

---

# Investigation Summary

| Stage | File / Database | Verification Command | Expected Result |
|--------|-----------------|----------------------|-----------------|
| RTL | `design_mux.v` | `grep "AMUX2_3V"` | RTL instance exists |
| Synthesis | `design_mux.nl.v` | `grep "AMUX2_3V"` | Black-box preserved |
| Floorplan | `floorplan.odb` | `get_db insts` | Macro imported |
| Placement | `placement.odb` | `get_db insts` | Macro placed |
| Routing | `routing.odb` | `get_db insts` | Macro retained |
| DEF | `design.def` | `grep "AMUX2_3V"` | Macro placement exported |
| GDS | `design_mux.magic.gds` | Magic/KLayout hierarchy inspection | Macro present in final layout |

---

# Expected Result

If the macro is present in every inspected file and database:

- ✓ Present in RTL
- ✓ Preserved during Yosys synthesis as a black-box
- ✓ Imported into the OpenROAD floorplan
- ✓ Present after global placement
- ✓ Retained through detailed routing
- ✓ Exported correctly in the DEF
- ✓ Included in the final GDS hierarchy

This confirms that the `AMUX2_3V` analog macro survives the complete RTL-to-GDS implementation flow without being removed or altered.
