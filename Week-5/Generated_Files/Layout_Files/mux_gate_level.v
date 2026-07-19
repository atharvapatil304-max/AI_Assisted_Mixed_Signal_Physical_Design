// Gate-level (black-box) netlist entry for AMUX2_3V_NEW
// Ports taken directly from AMUX2_3V_NEW.mag << labels >> section — confirmed, not inferred.
//
//   s   : select input
//   I0  : mux input 0
//   I1  : mux input 1
//   out : mux output
//   VDD : power (two straps in the layout, same net)
//   VSS : ground
//
// This module has no internal logic modeled — it is a placeholder/black-box
// wrapper so the cell can be instantiated at the gate level in a larger
// netlist while the real behavior lives in the physical layout / extracted
// SPICE view.

module AMUX2_3V_NEW (
    input  s,
    input  I0,
    input  I1,
    output out,
    inout  VDD,
    inout  VSS
);

    // NOTE: functionally this cell implements a 2:1 analog mux
    // (out = I0 when s=1, out = I1 when s=0), built from one inverter
    // and two complementary transmission gates. No RTL behavior is
    // modeled here since the real implementation is analog/transistor level.

endmodule


// Example instantiation:
//
// AMUX2_3V_NEW u_mux (
//     .s   (sel),
//     .I0  (in0),
//     .I1  (in1),
//     .out (mux_out),
//     .VDD (VDD),
//     .VSS (VSS)
// );
