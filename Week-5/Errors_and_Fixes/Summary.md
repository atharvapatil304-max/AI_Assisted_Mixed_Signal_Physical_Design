# Major Errors Encountered and Fixes

## 1. Missing SKY130 PDK

### Error
```
No PDKs installed.
```

### Cause
The SKY130 Process Design Kit (PDK) was not installed or enabled.

### Fix
Installed/enabled the required SKY130 PDK and verified the installation before continuing.

---

## 2. GitHub API Rate Limit

### Error
```
403 rate limit exceeded
```

### Cause
The PDK download failed because the GitHub API rate limit was exceeded.

### Fix
Used an existing local SKY130 installation (or authenticated with GitHub and retried later).

---

## 3. Missing SPICE Library

### Error
```
Could not find sky130.lib.spice
```

### Cause
The library path in the testbench was incorrect.

### Fix
Updated the `.lib` statement to reference the correct SKY130 model library.

---

## 4. Magic Technology File Not Loaded

### Error
```
Don't know how to read GDS-II
```

### Cause
Magic was started without the SKY130 technology file.

### Fix
Opened Magic using the correct technology file:

```bash
magic -T sky130A.tech
```

---

## 5. DRC Violations

### Error
Multiple Design Rule Check (DRC) violations during layout.

### Cause
Incorrect spacing and routing between layout layers.

### Fix
Adjusted transistor placement, routing, and spacing until the layout achieved **zero DRC violations**.

---

## 6. LVS Mismatch

### Error
```
Netlists do not match.
```

### Cause
Mismatch between the schematic and the extracted layout.

### Fix
Corrected transistor connections and pin labels, then re-ran extraction and Netgen LVS until the layout matched the schematic.

---

## 7. OpenLane Macro Integration Issues

### Error
The custom MUX macro was not detected correctly during OpenLane integration.

### Cause
Incorrect macro configuration and missing LEF/GDS references.

### Fix
Updated the OpenLane configuration with the correct LEF, GDS, Liberty files, and PDN macro hooks.

---

# Summary

| Stage | Status |
|--------|--------|
| PDK Setup | Fixed |
| Library Configuration | Fixed |
| Magic Setup | Fixed |
| DRC | Passed |
| LVS | Passed |
| OpenLane Integration | Passed |
