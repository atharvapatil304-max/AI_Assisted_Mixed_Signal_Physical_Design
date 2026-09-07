# Layout Extraction Report

## Tool
Magic extraction / `ext2spice` using SKY130A.

## Actual commands
```text
extract all
ext2spice lvs
ext2spice
```

## Result
**COMPLETED — extraction files were generated.**

Generated artifacts included:
- `AMUX2_3V_NEW.ext`
- `AMUX2_3V_NEW.spice`

## Important limitation
The extracted top-level subcircuit was not electrically equivalent to the intended six-pin AMUX. Its extracted pin list/connectivity was inconsistent with the reference design, which subsequently caused LVS failure and prevented a valid post-layout simulation.
