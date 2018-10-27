//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sat Oct 27 11:50:53 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target CMP.bd
//Design      : CMP
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "CMP,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=CMP,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=2,synth_mode=Global}" *) (* HW_HANDOFF = "CMP.hwdef" *) 
module CMP
   (i_CLK,
    i_LDRG,
    i_LD_0,
    i_LD_1,
    i_SW,
    o_EQ,
    o_GT,
    o_LT);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, CLK_DOMAIN MUL_i_CLK, FREQ_HZ 100000000, PHASE 0.000" *) input i_CLK;
  input i_LDRG;
  input i_LD_0;
  input i_LD_1;
  input [7:0]i_SW;
  output o_EQ;
  output o_GT;
  output o_LT;

  wire Comparator_0_o_EQ;
  wire Comparator_0_o_GT;
  wire Comparator_0_o_LT;
  wire [15:0]Multiplier_0_o_Result;
  wire [7:0]PIPO_0_o_Out;
  wire [7:0]PIPO_1_o_Out;
  wire [15:0]PIPO_2_o_Out;
  wire clk_100MHz_1;
  wire [7:0]i_A_0_1;
  wire i_BTN_0_1;
  wire i_BTN_0_2;
  wire i_BTN_1_1;

  assign clk_100MHz_1 = i_CLK;
  assign i_A_0_1 = i_SW[7:0];
  assign i_BTN_0_1 = i_LD_1;
  assign i_BTN_0_2 = i_LDRG;
  assign i_BTN_1_1 = i_LD_0;
  assign o_EQ = Comparator_0_o_EQ;
  assign o_GT = Comparator_0_o_GT;
  assign o_LT = Comparator_0_o_LT;
  CMP_Comparator_0_0 Comparator_0
       (.i_A(PIPO_2_o_Out),
        .i_B(Multiplier_0_o_Result),
        .o_EQ(Comparator_0_o_EQ),
        .o_GT(Comparator_0_o_GT),
        .o_LT(Comparator_0_o_LT));
  CMP_Multiplier_0_1 Multiplier_0
       (.i_A(PIPO_1_o_Out),
        .i_B(PIPO_0_o_Out),
        .o_Result(Multiplier_0_o_Result));
  CMP_PIPO_0_1 PIPO_0
       (.i_BTN(i_BTN_1_1),
        .i_CLK(clk_100MHz_1),
        .i_SW(i_A_0_1),
        .o_Out(PIPO_0_o_Out));
  CMP_PIPO_1_0 PIPO_1
       (.i_BTN(i_BTN_0_1),
        .i_CLK(clk_100MHz_1),
        .i_SW(i_A_0_1),
        .o_Out(PIPO_1_o_Out));
  CMP_PIPO_1_1 PIPO_2
       (.i_BTN(i_BTN_0_2),
        .i_CLK(clk_100MHz_1),
        .i_SW(Multiplier_0_o_Result),
        .o_Out(PIPO_2_o_Out));
endmodule
