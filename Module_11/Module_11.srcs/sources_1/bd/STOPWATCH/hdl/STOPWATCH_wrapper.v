//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Nov  7 01:27:01 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target STOPWATCH_wrapper.bd
//Design      : STOPWATCH_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module STOPWATCH_wrapper
   (i_CLK,
    i_Inc_0,
    i_RST_0,
    i_Start_0,
    i_Stop_0,
    o_Anodes_0,
    o_Cathodes_0);
  input i_CLK;
  input i_Inc_0;
  input i_RST_0;
  input i_Start_0;
  input i_Stop_0;
  output [3:0]o_Anodes_0;
  output [6:0]o_Cathodes_0;

  wire i_CLK;
  wire i_Inc_0;
  wire i_RST_0;
  wire i_Start_0;
  wire i_Stop_0;
  wire [3:0]o_Anodes_0;
  wire [6:0]o_Cathodes_0;

  STOPWATCH STOPWATCH_i
       (.i_CLK(i_CLK),
        .i_Inc_0(i_Inc_0),
        .i_RST_0(i_RST_0),
        .i_Start_0(i_Start_0),
        .i_Stop_0(i_Stop_0),
        .o_Anodes_0(o_Anodes_0),
        .o_Cathodes_0(o_Cathodes_0));
endmodule
