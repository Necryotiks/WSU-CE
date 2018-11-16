//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Tue Nov 13 14:43:37 2018
//Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
//Command     : generate_target SERIAL_ADDER_wrapper.bd
//Design      : SERIAL_ADDER_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SERIAL_ADDER_wrapper
   (clk_100MHz,
    i_A_0,
    i_B_0,
    o_Cout_0,
    o_Sum_0,
    reset_rtl_0);
  input clk_100MHz;
  input i_A_0;
  input i_B_0;
  output o_Cout_0;
  output o_Sum_0;
  input reset_rtl_0;

  wire clk_100MHz;
  wire i_A_0;
  wire i_B_0;
  wire o_Cout_0;
  wire o_Sum_0;
  wire reset_rtl_0;

  SERIAL_ADDER SERIAL_ADDER_i
       (.clk_100MHz(clk_100MHz),
        .i_A_0(i_A_0),
        .i_B_0(i_B_0),
        .o_Cout_0(o_Cout_0),
        .o_Sum_0(o_Sum_0),
        .reset_rtl_0(reset_rtl_0));
endmodule
