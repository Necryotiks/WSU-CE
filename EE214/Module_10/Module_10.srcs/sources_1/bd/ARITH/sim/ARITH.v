//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Tue Nov  6 16:03:26 2018
//Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
//Command     : generate_target ARITH.bd
//Design      : ARITH
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ARITH,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ARITH,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "ARITH.hwdef" *) 
module ARITH
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

  wire [7:0]ALU_0_o_Out;
  wire [3:0]ALU_0_o_Status;
  wire [7:0]i_A_0_1;
  wire [7:0]i_B_0_1;
  wire [2:0]i_Sel_0_1;

  assign i_A_0_1 = i_A_0[7:0];
  assign i_B_0_1 = i_B_0[7:0];
  assign i_Sel_0_1 = i_Sel_0[2:0];
  assign o_Out_0[7:0] = ALU_0_o_Out;
  assign o_Status_0[3:0] = ALU_0_o_Status;
  ARITH_ALU_0_0 ALU_0
       (.i_A(i_A_0_1),
        .i_B(i_B_0_1),
        .i_Sel(i_Sel_0_1),
        .o_Out(ALU_0_o_Out),
        .o_Status(ALU_0_o_Status));
endmodule
