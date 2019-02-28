//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu Nov  8 11:58:51 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target FSM_wrapper.bd
//Design      : FSM_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module FSM_wrapper
   (i_CLK,
    i_Inc_0,
    i_RST,
    i_Start_0,
    i_Stop_0,
    o_ENABLE_0);
  input i_CLK;
  input i_Inc_0;
  input i_RST;
  input i_Start_0;
  input i_Stop_0;
  output o_ENABLE_0;

  wire i_CLK;
  wire i_Inc_0;
  wire i_RST;
  wire i_Start_0;
  wire i_Stop_0;
  wire o_ENABLE_0;

  FSM FSM_i
       (.i_CLK(i_CLK),
        .i_Inc_0(i_Inc_0),
        .i_RST(i_RST),
        .i_Start_0(i_Start_0),
        .i_Stop_0(i_Stop_0),
        .o_ENABLE_0(o_ENABLE_0));
endmodule
