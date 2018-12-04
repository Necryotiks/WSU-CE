//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Dec  3 19:18:53 2018
//Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
//Command     : generate_target HDMI_CTRL_wrapper.bd
//Design      : HDMI_CTRL_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module HDMI_CTRL_wrapper
   (hdmi_tx_0_tmds_clk_n,
    hdmi_tx_0_tmds_clk_p,
    hdmi_tx_0_tmds_data_n,
    hdmi_tx_0_tmds_data_p,
    i_CLK,
    i_RST,
    o_BLUE,
    o_GREEN,
    o_HSYNC,
    o_RED,
    o_VSYNC);
  output hdmi_tx_0_tmds_clk_n;
  output hdmi_tx_0_tmds_clk_p;
  output [2:0]hdmi_tx_0_tmds_data_n;
  output [2:0]hdmi_tx_0_tmds_data_p;
  input i_CLK;
  input i_RST;
  output [3:0]o_BLUE;
  output [3:0]o_GREEN;
  output o_HSYNC;
  output [3:0]o_RED;
  output o_VSYNC;

  wire hdmi_tx_0_tmds_clk_n;
  wire hdmi_tx_0_tmds_clk_p;
  wire [2:0]hdmi_tx_0_tmds_data_n;
  wire [2:0]hdmi_tx_0_tmds_data_p;
  wire i_CLK;
  wire i_RST;
  wire [3:0]o_BLUE;
  wire [3:0]o_GREEN;
  wire o_HSYNC;
  wire [3:0]o_RED;
  wire o_VSYNC;

  HDMI_CTRL HDMI_CTRL_i
       (.hdmi_tx_0_tmds_clk_n(hdmi_tx_0_tmds_clk_n),
        .hdmi_tx_0_tmds_clk_p(hdmi_tx_0_tmds_clk_p),
        .hdmi_tx_0_tmds_data_n(hdmi_tx_0_tmds_data_n),
        .hdmi_tx_0_tmds_data_p(hdmi_tx_0_tmds_data_p),
        .i_CLK(i_CLK),
        .i_RST(i_RST),
        .o_BLUE(o_BLUE),
        .o_GREEN(o_GREEN),
        .o_HSYNC(o_HSYNC),
        .o_RED(o_RED),
        .o_VSYNC(o_VSYNC));
endmodule
