//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sat Feb 23 12:05:49 2019
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target Clock_Divider_wrapper.bd
//Design      : Clock_Divider_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Clock_Divider_wrapper
   (clk_100MHz,
    i_RST_0,
    o_Out_0);
  input clk_100MHz;
  input i_RST_0;
  output o_Out_0;

  wire clk_100MHz;
  wire i_RST_0;
  wire o_Out_0;

  Clock_Divider Clock_Divider_i
       (.clk_100MHz(clk_100MHz),
        .i_RST_0(i_RST_0),
        .o_Out_0(o_Out_0));
endmodule
