//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat Mar  2 01:21:01 2019
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target BCD_COUNTER_BD_wrapper.bd
//Design      : BCD_COUNTER_BD_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BCD_COUNTER_BD_wrapper
   (i_CLK,
    i_CLK_EN,
    i_RST,
    o_NEXT_CLK_EN,
    o_OUT);
  input i_CLK;
  input i_CLK_EN;
  input i_RST;
  output o_NEXT_CLK_EN;
  output [3:0]o_OUT;

  wire i_CLK;
  wire i_CLK_EN;
  wire i_RST;
  wire o_NEXT_CLK_EN;
  wire [3:0]o_OUT;

  BCD_COUNTER_BD BCD_COUNTER_BD_i
       (.i_CLK(i_CLK),
        .i_CLK_EN(i_CLK_EN),
        .i_RST(i_RST),
        .o_NEXT_CLK_EN(o_NEXT_CLK_EN),
        .o_OUT(o_OUT));
endmodule
