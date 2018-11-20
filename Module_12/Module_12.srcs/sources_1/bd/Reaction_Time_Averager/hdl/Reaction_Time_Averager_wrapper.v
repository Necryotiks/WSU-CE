//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Nov 19 22:35:25 2018
//Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
//Command     : generate_target Reaction_Time_Averager_wrapper.bd
//Design      : Reaction_Time_Averager_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Reaction_Time_Averager_wrapper
   (i_CLK,
    i_RST,
    i_React_0,
    i_Start_0,
    o_Anodes_0,
    o_Cathodes_0,
    o_Ready_0);
  input i_CLK;
  input i_RST;
  input i_React_0;
  input i_Start_0;
  output [3:0]o_Anodes_0;
  output [6:0]o_Cathodes_0;
  output [1:0]o_Ready_0;

  wire i_CLK;
  wire i_RST;
  wire i_React_0;
  wire i_Start_0;
  wire [3:0]o_Anodes_0;
  wire [6:0]o_Cathodes_0;
  wire [1:0]o_Ready_0;

  Reaction_Time_Averager Reaction_Time_Averager_i
       (.i_CLK(i_CLK),
        .i_RST(i_RST),
        .i_React_0(i_React_0),
        .i_Start_0(i_Start_0),
        .o_Anodes_0(o_Anodes_0),
        .o_Cathodes_0(o_Cathodes_0),
        .o_Ready_0(o_Ready_0));
endmodule
