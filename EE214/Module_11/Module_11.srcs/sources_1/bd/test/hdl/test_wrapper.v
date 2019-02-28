//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Fri Nov  9 20:19:19 2018
//Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
//Command     : generate_target test_wrapper.bd
//Design      : test_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module test_wrapper
   (i_CLK_0,
    i_RST_0,
    i_SDI_0,
    o_LED_0);
  input i_CLK_0;
  input i_RST_0;
  input i_SDI_0;
  output [7:0]o_LED_0;

  wire i_CLK_0;
  wire i_RST_0;
  wire i_SDI_0;
  wire [7:0]o_LED_0;

  test test_i
       (.i_CLK_0(i_CLK_0),
        .i_RST_0(i_RST_0),
        .i_SDI_0(i_SDI_0),
        .o_LED_0(o_LED_0));
endmodule
