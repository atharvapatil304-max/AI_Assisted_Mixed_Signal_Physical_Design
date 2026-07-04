# Prompt 03 – Physical Layout Verification

## Objective

Verify that the `AMUX2_3V` analog macro identified in the routed DEF can be located and inspected within the final GDS layout using KLayout.

---

# Investigation Procedure

The routed DEF provides the macro placement coordinates, while the final GDS contains the fabricated layout geometry. The goal is to correlate the DEF placement with the corresponding region in the GDS and verify that the macro appears correctly in the final physical layout.

This investigation is read-only and does not modify the design.

---

# Step 1 — Locate the Final GDS

## Purpose

Identify the final GDS generated after routing.

### Command

```bash
find runs -name "*.gds"
```

Typical output:

```text
runs/<RUN_NAME>/results/final/gds/design_mux.magic.gds
```

or

```text
runs/<RUN_NAME>/results/final/gds/design_mux.gds
```

Open the top-level GDS file in KLayout.

---

# Step 2 — Obtain the Macro Placement Coordinates

## Purpose

Retrieve the physical location of the macro from the routed DEF.

### Command

```bash
grep -n "AMUX2_3V" runs/<RUN_NAME>/results/routing/design_mux.def
```

Example:

```text
- u_amux AMUX2_3V + PLACED ( 324800 188000 ) N ;
```

From this entry, record:

- Instance name: `u_amux`
- Macro name: `AMUX2_3V`
- Placement coordinates:
  - X = `324800`
  - Y = `188000`
- Orientation: `N`

These coordinates define the macro origin in DEF database units (DBU).

---

# Step 3 — Convert DEF Coordinates (If Required)

## Purpose

Ensure the placement coordinates match the units used by KLayout.

The DEF header specifies the database units.

### Command

```bash
grep "UNITS DISTANCE MICRONS" runs/<RUN_NAME>/results/routing/design_mux.def
```

Example:

```text
UNITS DISTANCE MICRONS 1000 ;
```

Interpretation:

- 1000 DBU = 1 µm

Convert coordinates:

```text
X = 324800 / 1000 = 324.8 µm
Y = 188000 / 1000 = 188.0 µm
```

If your DEF uses a different DBU value, divide by that value accordingly.

---

# Step 4 — Open the GDS in KLayout

## Purpose

Load the final layout for inspection.

1. Launch KLayout.
2. Select **File → Open**.
3. Open:

```text
design_mux.magic.gds
```

or

```text
design_mux.gds
```

After loading, verify that the top-level cell (e.g., `design_mux`) is displayed in the **Cell Hierarchy** panel.

---

# Step 5 — Navigate to the Placement Coordinates

## Purpose

Locate the region corresponding to the macro placement.

Use KLayout's navigation feature:

1. Select **View → Goto Position** (or press the appropriate shortcut for your version).
2. Enter the converted coordinates:

```text
X = 324.8
Y = 188.0
```

3. Ensure the units are set to **microns (µm)** if prompted.
4. Zoom into the indicated location.

You should now be viewing the area where the macro was placed according to the DEF.

---

# Step 6 — Inspect the Surrounding Geometry

## Purpose

Confirm that a distinct layout block exists at the placement location.

Visually inspect the region for:

- A rectangular hard-macro boundary.
- Dense polygon geometry representing transistor-level layout.
- Multiple metal layers.
- Pin access shapes along the macro edges.
- A geometry pattern that is visually different from standard-cell rows.

Expected observations:

- The macro occupies a continuous rectangular region.
- Standard cells surround, but do not overlap, the macro.
- Routing enters or exits the macro through defined pin locations.

---

# Step 7 — Compare with LEF Dimensions

## Purpose

Verify that the physical size of the observed region matches the macro definition.

### Inspect the LEF

```bash
grep -A 3 "SIZE" AMUX2_3V.lef
```

Example:

```text
SIZE 45.600 BY 28.800 ;
```

Interpretation:

- Width = 45.600 µm
- Height = 28.800 µm

In KLayout:

1. Activate the **Ruler** or **Measure Distance** tool.
2. Measure the width of the identified macro region.
3. Measure the height of the identified macro region.

Compare the measured dimensions with the LEF values.

Expected result:

| Property | LEF | GDS Measurement |
|----------|-----|-----------------|
| Width | 45.600 µm | ≈ 45.600 µm |
| Height | 28.800 µm | ≈ 28.800 µm |

Minor differences due to measurement precision are acceptable.

---

# Step 8 — Inspect the Macro Boundary

## Purpose

Verify that the macro occupies the expected footprint.

Check for:

- Rectangular outline.
- Consistent dimensions.
- No overlap with neighboring standard cells.
- Proper placement within the core area.

A correctly integrated macro should appear as a single, well-defined hard block.

---

# Step 9 — Verify Routing Around the Macro

## Purpose

Ensure that routed interconnect reaches the macro pins.

Inspect the surrounding metal layers for:

- Routed signal wires entering the macro.
- Metal connections terminating at pin locations.
- Vias connecting between routing layers.
- Continuous routing from neighboring logic to the macro interface.

These features indicate that the macro is electrically integrated into the design.

---

# Step 10 — Cross-Check with the DEF

## Purpose

Confirm consistency between the DEF and the GDS.

Compare the following:

| DEF Property | GDS Observation |
|--------------|-----------------|
| Placement coordinates | Macro located at corresponding position |
| Orientation | Geometry orientation matches |
| Macro footprint | Dimensions agree with LEF |
| Routed connections | Metal routes terminate at macro boundary |

Agreement between these observations demonstrates that the physical implementation accurately reflects the routed DEF.

---

# Verification Checklist

| Verification | Method | Expected Result |
|--------------|--------|-----------------|
| Final GDS located | `find runs -name "*.gds"` | GDS file found |
| Placement coordinates obtained | `grep "AMUX2_3V"` in DEF | Valid X/Y coordinates |
| DBU conversion verified | Inspect `UNITS DISTANCE MICRONS` | Correct µm coordinates |
| Macro region located | KLayout navigation | Region found at DEF location |
| Geometry inspected | Visual inspection | Distinct hard-macro block |
| LEF dimensions compared | Measure in KLayout | Dimensions match LEF |
| Routing inspected | Visual inspection | Metal routes connect to macro |
| DEF/GDS consistency | Cross-check | Placement and geometry agree |

---

# Expected Result

A successful verification should demonstrate that:

- ✓ The `AMUX2_3V` placement coordinates from the routed DEF correspond to a distinct region in the final GDS.
- ✓ The observed layout geometry forms a hard-macro block with dimensions consistent with the `AMUX2_3V.lef` definition.
- ✓ The macro is correctly positioned and oriented within the design.
- ✓ Routed metal interconnect reaches the macro boundary, indicating physical integration with the surrounding logic.
- ✓ The GDS faithfully represents the implementation described by the routed DEF.

This completes the physical verification of the analog macro, confirming that the `AMUX2_3V` instance identified in RTL, preserved through synthesis, placed in the DEF, and routed by the implementation flow is present in the final GDS layout.
