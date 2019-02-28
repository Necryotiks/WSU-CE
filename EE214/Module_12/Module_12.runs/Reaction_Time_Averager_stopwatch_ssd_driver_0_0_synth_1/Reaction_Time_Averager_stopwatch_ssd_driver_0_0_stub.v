// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 23 15:49:23 2018
// Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_stopwatch_ssd_driver_0_0_stub.v
// Design      : Reaction_Time_Averager_stopwatch_ssd_driver_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "stopwatch_ssd_driver,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_SUBCLK, i_RST, i_CLK_EN, i_SRST, o_Digit_1_val, 
  o_Digit_2_val, o_Digit_3_val, o_Digit_4_val)
/* synthesis syn_black_box black_box_pad_pin="i_SUBCLK,i_RST,i_CLK_EN,i_SRST,o_Digit_1_val[3:0],o_Digit_2_val[3:0],o_Digit_3_val[3:0],o_Digit_4_val[3:0]" */;
  input i_SUBCLK;
  input i_RST;
  input i_CLK_EN;
  input i_SRST;
  output [3:0]o_Digit_1_val;
  output [3:0]o_Digit_2_val;
  output [3:0]o_Digit_3_val;
  output [3:0]o_Digit_4_val;
endmodule
