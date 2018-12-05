//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Dec  5 02:12:10 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target HDMI_VGA_wrapper.bd
//Design      : HDMI_VGA_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module HDMI_VGA_wrapper
   (i_CLK,
    i_RST,
    o_BLUE,
    o_GREEN,
    o_HSYNC,
    o_RED,
    o_VSYNC);
  input i_CLK;
  input i_RST;
  output [3:0]o_BLUE;
  output [3:0]o_GREEN;
  output o_HSYNC;
  output [3:0]o_RED;
  output o_VSYNC;

  wire i_CLK;
  wire i_RST;
  wire [3:0]o_BLUE;
  wire [3:0]o_GREEN;
  wire o_HSYNC;
  wire [3:0]o_RED;
  wire o_VSYNC;

  HDMI_VGA HDMI_VGA_i
       (.i_CLK(i_CLK),
        .i_RST(i_RST),
        .o_BLUE(o_BLUE),
        .o_GREEN(o_GREEN),
        .o_HSYNC(o_HSYNC),
        .o_RED(o_RED),
        .o_VSYNC(o_VSYNC));
endmodule
