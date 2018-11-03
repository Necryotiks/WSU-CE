//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sat Nov  3 00:11:25 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target ARITH_wrapper.bd
//Design      : ARITH_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ARITH_wrapper
   (i_A_0,
    i_B_0,
    i_Sel_0,
    o_Out_0,
    o_Status_0);
  input [7:0]i_A_0;
  input [7:0]i_B_0;
  input [2:0]i_Sel_0;
  output [7:0]o_Out_0;
  output [3:0]o_Status_0;

  wire [7:0]i_A_0;
  wire [7:0]i_B_0;
  wire [2:0]i_Sel_0;
  wire [7:0]o_Out_0;
  wire [3:0]o_Status_0;

  ARITH ARITH_i
       (.i_A_0(i_A_0),
        .i_B_0(i_B_0),
        .i_Sel_0(i_Sel_0),
        .o_Out_0(o_Out_0),
        .o_Status_0(o_Status_0));
endmodule
