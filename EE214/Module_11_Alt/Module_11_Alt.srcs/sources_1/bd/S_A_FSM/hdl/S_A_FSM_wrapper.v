//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Nov 12 00:19:02 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target S_A_FSM_wrapper.bd
//Design      : S_A_FSM_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module S_A_FSM_wrapper
   (clk_100MHz,
    i_IN_0,
    i_IN_1,
    i_SFT_LD_0,
    o_OUT_0,
    reset_rtl_0);
  input clk_100MHz;
  input [7:0]i_IN_0;
  input [7:0]i_IN_1;
  input i_SFT_LD_0;
  output [7:0]o_OUT_0;
  input reset_rtl_0;

  wire clk_100MHz;
  wire [7:0]i_IN_0;
  wire [7:0]i_IN_1;
  wire i_SFT_LD_0;
  wire [7:0]o_OUT_0;
  wire reset_rtl_0;

  S_A_FSM S_A_FSM_i
       (.clk_100MHz(clk_100MHz),
        .i_IN_0(i_IN_0),
        .i_IN_1(i_IN_1),
        .i_SFT_LD_0(i_SFT_LD_0),
        .o_OUT_0(o_OUT_0),
        .reset_rtl_0(reset_rtl_0));
endmodule
