//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sat Nov 10 21:34:09 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target SERIAL_ADDER_wrapper.bd
//Design      : SERIAL_ADDER_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SERIAL_ADDER_wrapper
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
endmodule
