// amux2_dh.v - Verilog black-box for the double-height 2:1 analog MUX macro.
// Port order/names match the verified transistor-level netlist (amux2_dh_tb.spice).
// NOTE: analog signal pins (IN0, IN1, OUT) are modeled as 1-bit wires purely so
// synthesis/PnR tools can route them; they carry analog voltages, not logic.
`celldefine
module amux2_dh (
    input  IN0,     // analog input 0 - selected when SEL = 0
    input  IN1,     // analog input 1 - selected when SEL = 1
    input  SEL,     // digital select
    output OUT,     // analog output
    inout  VPWR,    // power rail
    inout  VGND     // ground rail
);
    // Black-box: no functional model here on purpose - PnR/LVS reference only.
    // Verified behavior (see amux2_dh_tb.spice / comparison_table.md):
    //   SEL = 0  -> OUT tracks IN1
    //   SEL = 1  -> OUT tracks IN0
endmodule
`endcelldefine
