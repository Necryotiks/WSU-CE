//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Fri Oct 26 20:22:55 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target MUL_wrapper.bd
//Design      : MUL_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MUL_wrapper
   (an_0,
    cathode_0,
    clk_100MHz,
    i_A_0,
    i_B_0);
  output [3:0]an_0;
  output [6:0]cathode_0;
  input clk_100MHz;
  input [7:0]i_A_0;
  input [7:0]i_B_0;

  wire [3:0]an_0;
  wire [6:0]cathode_0;
  wire clk_100MHz;
  wire [7:0]i_A_0;
  wire [7:0]i_B_0;

  MUL MUL_i
       (.an_0(an_0),
        .cathode_0(cathode_0),
        .clk_100MHz(clk_100MHz),
        .i_A_0(i_A_0),
        .i_B_0(i_B_0));
endmodule
