//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sat Oct 27 10:37:56 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target CLA_ADDER_wrapper.bd
//Design      : CLA_ADDER_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module CLA_ADDER_wrapper
   (i_CLK,
    i_SW_LOWER,
    i_SW_UPPER,
    o_Anodes,
    o_Cathodes,
    o_Overflow);
  input i_CLK;
  input [3:0]i_SW_LOWER;
  input [3:0]i_SW_UPPER;
  output [3:0]o_Anodes;
  output [6:0]o_Cathodes;
  output o_Overflow;

  wire i_CLK;
  wire [3:0]i_SW_LOWER;
  wire [3:0]i_SW_UPPER;
  wire [3:0]o_Anodes;
  wire [6:0]o_Cathodes;
  wire o_Overflow;

  CLA_ADDER CLA_ADDER_i
       (.i_CLK(i_CLK),
        .i_SW_LOWER(i_SW_LOWER),
        .i_SW_UPPER(i_SW_UPPER),
        .o_Anodes(o_Anodes),
        .o_Cathodes(o_Cathodes),
        .o_Overflow(o_Overflow));
endmodule
