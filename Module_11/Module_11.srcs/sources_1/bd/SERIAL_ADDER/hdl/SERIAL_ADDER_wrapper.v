//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
<<<<<<< HEAD
//Date        : Tue Nov 13 14:43:37 2018
=======
<<<<<<< HEAD
//Date        : Sat Nov 10 21:34:09 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
=======
//Date        : Fri Nov  9 16:11:44 2018
>>>>>>> f5b32d4ca83d31785747b52779843e931249981e
//Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
>>>>>>> 8c676840f2d6ed352e8a720fb7e570aabcf8c2b5
//Command     : generate_target SERIAL_ADDER_wrapper.bd
//Design      : SERIAL_ADDER_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SERIAL_ADDER_wrapper
<<<<<<< HEAD
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
=======
   (i_CLK,
    i_IN_0,
    i_IN_1,
    i_RST,
    i_SFT_LD_0,
    o_OUT_0);
  input i_CLK;
  input [7:0]i_IN_0;
  input [7:0]i_IN_1;
  input i_RST;
  input i_SFT_LD_0;
  output [7:0]o_OUT_0;

  wire i_CLK;
  wire [7:0]i_IN_0;
  wire [7:0]i_IN_1;
  wire i_RST;
  wire i_SFT_LD_0;
  wire [7:0]o_OUT_0;

  SERIAL_ADDER SERIAL_ADDER_i
       (.i_CLK(i_CLK),
        .i_IN_0(i_IN_0),
        .i_IN_1(i_IN_1),
        .i_RST(i_RST),
        .i_SFT_LD_0(i_SFT_LD_0),
        .o_OUT_0(o_OUT_0));
>>>>>>> f5b32d4ca83d31785747b52779843e931249981e
endmodule
