# Observations

## Overview

The objective of this task was to design and integrate a custom double-height 2:1 analog multiplexer (MUX) using the SKY130 Process Design Kit (PDK) and replace the placeholder AMUX2_3V macro used in the mixed-signal design flow. The complete implementation involved schematic design, pre-layout simulation, custom physical layout generation, design verification, macro generation, and OpenLane integration.

---

## Detailed Observations

### 1. Transistor-Level Schematic Design

The analog multiplexer was implemented using complementary CMOS transmission gates. The circuit consisted of two transmission gates controlled by complementary select signals generated using a CMOS inverter. This configuration enables bidirectional analog signal transmission while minimizing ON resistance and reducing signal degradation. Proper transistor sizing was selected to balance switching performance and layout simplicity.

---

### 2. Functional Verification through Pre-Layout Simulation

The designed schematic was simulated using ngspice before physical implementation. Analog input signals and a periodic select signal were applied to verify the switching functionality. The simulation confirmed that the output accurately followed Input A when the select signal was LOW and Input B when the select signal was HIGH. The generated waveforms showed correct switching behaviour without functional errors, validating the transistor-level implementation before layout generation.

---

### 3. Development of a Double-Height Layout

Unlike a conventional standard-cell layout, the custom MUX was implemented as a double-height cell using the Magic VLSI Layout Editor. The increased cell height provided additional routing resources and improved accessibility for signal and power connections. PMOS transistors were placed inside the n-well region, while NMOS transistors were placed in the p-substrate following SKY130 layout guidelines. The larger cell also simplified routing and reduced congestion during macro integration.

---

### 4. Power Distribution and Pin Placement

Continuous VPWR and VGND rails were created across the entire layout to ensure reliable power distribution. All input, output, select, power, and ground pins were properly labeled using Magic labels so that they could be recognized during extraction and LEF generation. Pin placement was carefully selected to improve accessibility during routing and simplify integration into the OpenLane flow.

---

### 5. Design Rule Check (DRC)

The initial layout contained a few design rule violations related to spacing between diffusion regions, metal routing, and contact placement. These violations were identified using Magic's DRC engine and corrected by adjusting transistor spacing, rerouting signal paths, and modifying contact locations. After optimization, the final layout achieved zero DRC violations, confirming compliance with SKY130 physical design rules.

---

### 6. Layout Extraction and LVS Verification

The verified layout was extracted using Magic to generate an extracted SPICE netlist. The extracted netlist was compared with the original schematic using Netgen LVS. Initial mismatches caused by incorrect labels and connectivity were corrected, after which the extracted layout matched the schematic successfully. This confirmed that the physical implementation accurately represented the intended circuit functionality.

---

### 7. Generation of Physical Design Views

After successful verification, multiple design views were generated from the layout. These included the GDSII file for fabrication, LEF for placement and routing, extracted SPICE for post-layout simulation, and additional macro files required for OpenLane integration. These generated views ensured that the custom analog macro could be reused in larger mixed-signal projects.

---

### 8. OpenLane Integration

The generated LEF, GDS, Liberty, and configuration files were integrated into the OpenLane physical design flow. Appropriate macro references and PDN hooks were added to the configuration files, enabling successful placement of the custom analog MUX within the digital design environment. The integration demonstrated that the custom macro was compatible with the RTL-to-GDS implementation flow.

---

### 9. Comparison with the Placeholder Macro

The custom-designed MUX replaced the placeholder AMUX2_3V macro used in previous stages of the project. Unlike the placeholder, the new implementation provided a complete transistor-level schematic, custom layout, verified extraction, and reusable physical design views. The double-height implementation also offered improved routing flexibility and better compatibility with mixed-signal floorplanning requirements.

---

### 10. Overall Design Flow

The complete design flow successfully demonstrated every stage involved in analog macro development using open-source EDA tools. Starting from transistor-level circuit design, the project progressed through schematic verification, physical layout creation, DRC verification, layout extraction, LVS matching, macro generation, and OpenLane integration. Each stage built upon the previous one, resulting in a verified and reusable custom analog macro.

---

## Final Observation

The Week 5 task successfully demonstrated the complete custom analog physical design flow using the SKY130 PDK. The newly designed double-height 2:1 analog multiplexer was verified at both the schematic and layout levels, passed DRC and LVS verification, and was successfully prepared for integration into the OpenLane RTL-to-GDSII flow. The project provided practical experience in analog layout design, physical verification, macro generation, and mixed-signal integration using open-source EDA tools, highlighting the importance of verification and layout optimization in modern VLSI design.
