// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 23 13:13:33 2018
// Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Necryotiks/AppData/Roaming/SPB_Data/WSU-CPTE/Module_12/Module_12.srcs/sources_1/bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_EXTRA_THICC_MUX_0_0/Reaction_Time_Averager_EXTRA_THICC_MUX_0_0_stub.v
// Design      : Reaction_Time_Averager_EXTRA_THICC_MUX_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "EXTRA_THICC_MUX,Vivado 2018.2" *)
module Reaction_Time_Averager_EXTRA_THICC_MUX_0_0(i_SW_Digit_1, i_SW_Digit_2, i_SW_Digit_3, 
  i_SW_Digit_4, i_T_Digit_1, i_T_Digit_2, i_T_Digit_3, i_T_Digit_4, i_Sel, i_CLK, o_Digit_1, 
  o_Digit_2, o_Digit_3, o_Digit_4)
/* synthesis syn_black_box black_box_pad_pin="i_SW_Digit_1[3:0],i_SW_Digit_2[3:0],i_SW_Digit_3[3:0],i_SW_Digit_4[3:0],i_T_Digit_1[3:0],i_T_Digit_2[3:0],i_T_Digit_3[3:0],i_T_Digit_4[3:0],i_Sel,i_CLK,o_Digit_1[3:0],o_Digit_2[3:0],o_Digit_3[3:0],o_Digit_4[3:0]" */;
  input [3:0]i_SW_Digit_1;
  input [3:0]i_SW_Digit_2;
  input [3:0]i_SW_Digit_3;
  input [3:0]i_SW_Digit_4;
  input [3:0]i_T_Digit_1;
  input [3:0]i_T_Digit_2;
  input [3:0]i_T_Digit_3;
  input [3:0]i_T_Digit_4;
  input i_Sel;
  input i_CLK;
  output [3:0]o_Digit_1;
  output [3:0]o_Digit_2;
  output [3:0]o_Digit_3;
  output [3:0]o_Digit_4;
endmodule
