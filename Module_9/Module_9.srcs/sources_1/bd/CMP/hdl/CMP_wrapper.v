//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sat Oct 27 11:23:48 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target CMP_wrapper.bd
//Design      : CMP_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module CMP_wrapper
   (i_CLK,
    i_LDRG,
    i_LD_0,
    i_LD_1,
    i_SW,
    o_EQ_0,
    o_GT_0,
    o_LT_0);
  input i_CLK;
  input i_LDRG;
  input i_LD_0;
  input i_LD_1;
  input [7:0]i_SW;
  output o_EQ_0;
  output o_GT_0;
  output o_LT_0;

  wire i_CLK;
  wire i_LDRG;
  wire i_LD_0;
  wire i_LD_1;
  wire [7:0]i_SW;
  wire o_EQ_0;
  wire o_GT_0;
  wire o_LT_0;

  CMP CMP_i
       (.i_CLK(i_CLK),
        .i_LDRG(i_LDRG),
        .i_LD_0(i_LD_0),
        .i_LD_1(i_LD_1),
        .i_SW(i_SW),
        .o_EQ_0(o_EQ_0),
        .o_GT_0(o_GT_0),
        .o_LT_0(o_LT_0));
endmodule
