# Prompt 02 – DEF Verification

## Objective

Verify whether the `AMUX2_3V` analog macro is physically placed and correctly connected in the routed DEF database without modifying the design.

---

# Investigation Procedure

The routed DEF is the final physical placement database produced after routing. It contains the location, orientation, component definitions, pins, and routed interconnections.

This investigation consists only of inspecting the generated implementation files.

---

# Step 1 — Locate the Routed DEF

## Purpose

Identify the DEF generated after detailed routing.

### Command

```bash
find runs -name "*.def"
```

Typical output:

```text
runs/<RUN_NAME>/results/routing/design_mux.def
```

If multiple DEF files exist:

```bash
find runs -name "*.def" | sort
```

Select the DEF located under:

```text
results/routing/
```

since this represents the final routed implementation.

---

# Step 2 — Verify Macro Placement

## Purpose

Confirm that the analog macro exists as a placed component.

### Command

```bash
grep -n "AMUX2_3V" runs/<RUN_NAME>/results/routing/design_mux.def
```

Example output:

```text
1453: - u_amux AMUX2_3V + PLACED ( 324800 188000 ) N ;
```

### Interpretation

The DEF entry contains:

| Field | Meaning |
|---------|----------|
| `u_amux` | Instance name |
| `AMUX2_3V` | Macro (cell) name |
| `PLACED` | Macro has been physically placed |
| `(324800 188000)` | Placement coordinates (DEF database units) |
| `N` | Orientation |

If no match is found, the macro is absent from the routed DEF.

---

# Step 3 — Verify Placement Coordinates

## Purpose

Determine the exact physical location of the macro.

The placement record has the format:

```text
- <instance> <macro>
  + PLACED ( X Y ) ORIENTATION ;
```

Example:

```text
- u_amux AMUX2_3V
  + PLACED ( 324800 188000 ) N ;
```

### Interpretation

```
X = 324800
Y = 188000
```

These values represent the macro origin in DEF database units (DBU).

A valid coordinate pair confirms that the macro has been assigned a physical location.

---

# Step 4 — Verify Placement Orientation

## Purpose

Confirm the macro orientation used during placement.

Possible orientation values include:

| Orientation | Meaning |
|--------------|----------|
| N | North (default) |
| S | South |
| E | East |
| W | West |
| FN | Flipped North |
| FS | Flipped South |
| FE | Flipped East |
| FW | Flipped West |

Example:

```text
+ PLACED (324800 188000) N ;
```

Interpretation:

```
Orientation = North
```

This indicates the macro was placed without rotation or mirroring.

---

# Step 5 — Verify Routed Signal Connections

## Purpose

Confirm that the macro pins are connected to routed nets.

The routed nets are stored in the `NETS` section of the DEF.

### Locate the NETS section

```bash
grep -n "^NETS" runs/<RUN_NAME>/results/routing/design_mux.def
```

Example:

```text
1750:NETS 48 ;
```

---

### Search for the macro instance

```bash
grep -n "u_amux" runs/<RUN_NAME>/results/routing/design_mux.def
```

Example:

```text
- select
    ( PIN select )
    ( u_amux SEL )

- data0
    ( u_amux I0 )

- data1
    ( u_amux I1 )

- out
    ( u_amux X )
```

### Interpretation

Each net lists the macro instance and the connected pin.

For example:

```
(u_amux I0)
```

means:

- Net is connected to instance `u_amux`
- Connection is through macro pin `I0`

Presence in the `NETS` section confirms logical and physical connectivity.

---

# Step 6 — Verify Routed Geometry

## Purpose

Confirm that routing reaches the macro.

Within each NET entry, routed wires are described using `ROUTED` statements.

Example:

```text
- select
    ( PIN select )
    ( u_amux SEL )
    + ROUTED met2
      ( 5200 3600 )
      ( 6400 3600 )
      ( 6400 4100 )
;
```

### Interpretation

The `ROUTED` section indicates that physical metal wires have been generated for the net.

If the macro pin appears within a routed net, the router has established connectivity.

---

# Step 7 — Verify Macro Pins

## Purpose

Confirm which macro pins participate in routed connections.

Search for the instance name:

```bash
grep "u_amux" runs/<RUN_NAME>/results/routing/design_mux.def
```

Typical output:

```text
(u_amux I0)
(u_amux I1)
(u_amux SEL)
(u_amux X)
```

Interpretation:

| Pin | Function |
|------|----------|
| `I0` | Input 0 |
| `I1` | Input 1 |
| `SEL` | Select input |
| `X` | Output |

The presence of these pins within the routed nets confirms that the router recognizes and connects the macro interfaces.

---

# Step 8 — Cross-Check with LEF (Optional)

## Purpose

Verify that the routed pins correspond to the macro definition.

Inspect the LEF:

```bash
grep -n "PIN" AMUX2_3V.lef
```

Example:

```text
PIN I0
PIN I1
PIN SEL
PIN X
PIN VPWR
PIN VGND
```

Compare these pin names with those found in the DEF.

Matching names indicate that routing uses the correct macro interface.

---

# Verification Checklist

| Verification | Command | Expected Result |
|--------------|---------|-----------------|
| Locate routed DEF | `find runs -name "*.def"` | Routed DEF found |
| Macro exists | `grep "AMUX2_3V"` | Macro instance listed |
| Placement coordinates | Inspect `PLACED` entry | Valid X/Y coordinates |
| Orientation | Inspect orientation field | `N`, `S`, `FN`, etc. |
| Connected nets | `grep "u_amux"` | Instance appears in `NETS` section |
| Routed wires | Inspect `ROUTED` entries | Metal routes present |
| Macro pins | Compare with LEF | Pins match LEF definition |

---

# Expected Result

A successful verification should demonstrate that:

- ✓ The `AMUX2_3V` macro is present in the routed DEF.
- ✓ The macro has valid physical placement coordinates.
- ✓ A placement orientation (such as `N`) is assigned.
- ✓ The macro participates in the routed `NETS` section.
- ✓ Signal pins (e.g., `I0`, `I1`, `SEL`, `X`) are connected to routed nets.
- ✓ The routed pin names match those defined in the `AMUX2_3V.lef`.

These observations confirm that the analog macro is physically placed and integrated into the routed implementation without requiring any design modifications.
