//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Oct 29 16:21:31 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target S_ADDER_wrapper.bd
//Design      : S_ADDER_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module S_ADDER_wrapper
   (i_CLK,
    i_LD_0,
    i_SW,
    i_Sub,
    o_Anodes,
    o_Carry,
    o_Cathode);
  input i_CLK;
  input i_LD_0;
  input [7:0]i_SW;
  input i_Sub;
  output [3:0]o_Anodes;
  output o_Carry;
  output [6:0]o_Cathode;

  wire i_CLK;
  wire i_LD_0;
  wire [7:0]i_SW;
  wire i_Sub;
  wire [3:0]o_Anodes;
  wire o_Carry;
  wire [6:0]o_Cathode;

  S_ADDER S_ADDER_i
       (.i_CLK(i_CLK),
        .i_LD_0(i_LD_0),
        .i_SW(i_SW),
        .i_Sub(i_Sub),
        .o_Anodes(o_Anodes),
        .o_Carry(o_Carry),
        .o_Cathode(o_Cathode));
endmodule
