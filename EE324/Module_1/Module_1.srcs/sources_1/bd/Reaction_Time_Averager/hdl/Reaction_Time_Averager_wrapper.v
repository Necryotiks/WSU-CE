//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Thu Aug 29 12:29:30 2019
//Host        : Necryotiks running 64-bit unknown
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
    i_Terminate_0,
    o_Anodes_0,
    o_Cathodes_0,
    o_Ready_0,
    o_T_NUM_0);
  input i_CLK;
  input i_RST;
  input i_React_0;
  input i_Start_0;
  input i_Terminate_0;
  output [3:0]o_Anodes_0;
  output [6:0]o_Cathodes_0;
  output [1:0]o_Ready_0;
  output [2:0]o_T_NUM_0;

  wire i_CLK;
  wire i_RST;
  wire i_React_0;
  wire i_Start_0;
  wire i_Terminate_0;
  wire [3:0]o_Anodes_0;
  wire [6:0]o_Cathodes_0;
  wire [1:0]o_Ready_0;
  wire [2:0]o_T_NUM_0;

  Reaction_Time_Averager Reaction_Time_Averager_i
       (.i_CLK(i_CLK),
        .i_RST(i_RST),
        .i_React_0(i_React_0),
        .i_Start_0(i_Start_0),
        .i_Terminate_0(i_Terminate_0),
        .o_Anodes_0(o_Anodes_0),
        .o_Cathodes_0(o_Cathodes_0),
        .o_Ready_0(o_Ready_0),
        .o_T_NUM_0(o_T_NUM_0));
endmodule
