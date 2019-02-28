//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Tue Dec  4 16:04:41 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target TEST_wrapper.bd
//Design      : TEST_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TEST_wrapper
   (i_CLK,
    i_Pattern,
    i_RST,
    o_BLUE,
    o_GREEN,
    o_HSYNC,
    o_RED,
    o_VSYNC);
  input i_CLK;
  input [3:0]i_Pattern;
  input i_RST;
  output [2:0]o_BLUE;
  output [2:0]o_GREEN;
  output o_HSYNC;
  output [2:0]o_RED;
  output o_VSYNC;

  wire i_CLK;
  wire [3:0]i_Pattern;
  wire i_RST;
  wire [2:0]o_BLUE;
  wire [2:0]o_GREEN;
  wire o_HSYNC;
  wire [2:0]o_RED;
  wire o_VSYNC;

  TEST TEST_i
       (.i_CLK(i_CLK),
        .i_Pattern(i_Pattern),
        .i_RST(i_RST),
        .o_BLUE(o_BLUE),
        .o_GREEN(o_GREEN),
        .o_HSYNC(o_HSYNC),
        .o_RED(o_RED),
        .o_VSYNC(o_VSYNC));
endmodule
