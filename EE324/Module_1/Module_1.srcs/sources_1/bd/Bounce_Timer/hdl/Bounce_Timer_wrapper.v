//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Thu Aug 29 15:05:49 2019
//Host        : Necryotiks running 64-bit unknown
//Command     : generate_target Bounce_Timer_wrapper.bd
//Design      : Bounce_Timer_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Bounce_Timer_wrapper
   (i_CLK,
    i_RST,
    i_Signal,
    o_Anodes_0,
    o_Cathodes_0);
  input i_CLK;
  input i_RST;
  input i_Signal;
  output [3:0]o_Anodes_0;
  output [6:0]o_Cathodes_0;

  wire i_CLK;
  wire i_RST;
  wire i_Signal;
  wire [3:0]o_Anodes_0;
  wire [6:0]o_Cathodes_0;

  Bounce_Timer Bounce_Timer_i
       (.i_CLK(i_CLK),
        .i_RST(i_RST),
        .i_Signal(i_Signal),
        .o_Anodes_0(o_Anodes_0),
        .o_Cathodes_0(o_Cathodes_0));
endmodule
