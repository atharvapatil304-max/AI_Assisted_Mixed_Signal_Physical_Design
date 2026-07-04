# Prompt 04 - OpenLane PDN Hook Generation

## Prompt

Create the `FP_PDN_MACRO_HOOKS` entry for the analog macro `AMUX2_3V` used in a `SKY130` mixed-signal design.

**Power Connections**

* `VPWR` → `VPWR`
* `VGND` → `VGND`

Requirements:

* Follow OpenLane-supported syntax.
* Return only the JSON snippet.

## Expected Output

```json
{
  "FP_PDN_MACRO_HOOKS": [
    "AMUX2_3V VPWR VGND VPWR VGND"
  ]
}
```

## Summary

The generated configuration connects the macro power pins to the top-level power network using the standard OpenLane PDN hook format. The output was verified against the working design and produced the expected configuration.
