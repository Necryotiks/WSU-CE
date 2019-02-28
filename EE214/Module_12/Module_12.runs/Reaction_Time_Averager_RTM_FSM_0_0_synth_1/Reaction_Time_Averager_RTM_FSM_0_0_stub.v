// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 23 14:03:43 2018
// Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_RTM_FSM_0_0_stub.v
// Design      : Reaction_Time_Averager_RTM_FSM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "RTM_FSM,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_CLK1KHZ, i_RST, i_CVAL, i_Start, i_Terminate, 
  i_React, o_Ready, o_SWEN, o_ACC_EN, o_DONE, o_T_NUM, o_SRST, o_TRIAL_NUM, o_CEN)
/* synthesis syn_black_box black_box_pad_pin="i_CLK1KHZ,i_RST,i_CVAL[12:0],i_Start,i_Terminate,i_React,o_Ready[1:0],o_SWEN,o_ACC_EN,o_DONE,o_T_NUM[2:0],o_SRST,o_TRIAL_NUM[2:0],o_CEN" */;
  input i_CLK1KHZ;
  input i_RST;
  input [12:0]i_CVAL;
  input i_Start;
  input i_Terminate;
  input i_React;
  output [1:0]o_Ready;
  output o_SWEN;
  output o_ACC_EN;
  output o_DONE;
  output [2:0]o_T_NUM;
  output o_SRST;
  output [2:0]o_TRIAL_NUM;
  output o_CEN;
endmodule
