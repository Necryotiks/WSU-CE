// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 23 13:05:10 2018
// Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top Reaction_Time_Averager_xlslice_0_3 -prefix
//               Reaction_Time_Averager_xlslice_0_3_ Reaction_Time_Averager_xlslice_0_3_stub.v
// Design      : Reaction_Time_Averager_xlslice_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2018.2" *)
module Reaction_Time_Averager_xlslice_0_3(Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Din[15:0],Dout[3:0]" */;
  input [15:0]Din;
  output [3:0]Dout;
endmodule
