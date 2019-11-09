//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Thu Nov  7 10:47:05 2019
//Host        : sergaljerk-Standard-PC-i440FX-PIIX-1996 running 64-bit Ubuntu 18.04.3 LTS
//Command     : generate_target HDMI_CONTROLLER_BD_wrapper.bd
//Design      : HDMI_CONTROLLER_BD_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module HDMI_CONTROLLER_BD_wrapper
   (hdmi_tx_0_tmds_clk_n,
    hdmi_tx_0_tmds_clk_p,
    hdmi_tx_0_tmds_data_n,
    hdmi_tx_0_tmds_data_p,
    i_CLK_100MHZ,
    i_RST,
    i_SEL);
  output hdmi_tx_0_tmds_clk_n;
  output hdmi_tx_0_tmds_clk_p;
  output [2:0]hdmi_tx_0_tmds_data_n;
  output [2:0]hdmi_tx_0_tmds_data_p;
  input i_CLK_100MHZ;
  input i_RST;
  input [1:0]i_SEL;

  wire hdmi_tx_0_tmds_clk_n;
  wire hdmi_tx_0_tmds_clk_p;
  wire [2:0]hdmi_tx_0_tmds_data_n;
  wire [2:0]hdmi_tx_0_tmds_data_p;
  wire i_CLK_100MHZ;
  wire i_RST;
  wire [1:0]i_SEL;

  HDMI_CONTROLLER_BD HDMI_CONTROLLER_BD_i
       (.hdmi_tx_0_tmds_clk_n(hdmi_tx_0_tmds_clk_n),
        .hdmi_tx_0_tmds_clk_p(hdmi_tx_0_tmds_clk_p),
        .hdmi_tx_0_tmds_data_n(hdmi_tx_0_tmds_data_n),
        .hdmi_tx_0_tmds_data_p(hdmi_tx_0_tmds_data_p),
        .i_CLK_100MHZ(i_CLK_100MHZ),
        .i_RST(i_RST),
        .i_SEL(i_SEL));
endmodule
