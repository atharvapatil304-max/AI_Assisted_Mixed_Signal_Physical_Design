# Pre-Layout Simulation Results

This directory stores the results obtained from ngspice simulation before physical layout generation.

## Files to Include

- waveform_select0.png
- waveform_select1.png
- output_overlay.png
- ngspice.log
- delay_measurements.md

## Verification

The following checks should be completed:

- ✓ Output follows Input A when SEL = 0
- ✓ Output follows Input B when SEL = 1
- ✓ No waveform distortion
- ✓ Correct logic inversion for transmission gates
- ✓ Propagation delay measured
- ✓ Rise and fall times measured
