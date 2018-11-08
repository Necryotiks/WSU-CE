//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu Nov  8 11:59:30 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target SERIAL_ADDER_wrapper.bd
//Design      : SERIAL_ADDER_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SERIAL_ADDER_wrapper
   (i_A_0,
    i_B_0,
    i_CLK,
    i_RST,
    o_Cout_0,
    o_Sum_0);
  input i_A_0;
  input i_B_0;
  input i_CLK;
  input i_RST;
  output o_Cout_0;
  output o_Sum_0;

  wire i_A_0;
  wire i_B_0;
  wire i_CLK;
  wire i_RST;
  wire o_Cout_0;
  wire o_Sum_0;

  SERIAL_ADDER SERIAL_ADDER_i
       (.i_A_0(i_A_0),
        .i_B_0(i_B_0),
        .i_CLK(i_CLK),
        .i_RST(i_RST),
        .o_Cout_0(o_Cout_0),
        .o_Sum_0(o_Sum_0));
endmodule
