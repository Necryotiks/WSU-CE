//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat Mar  2 17:32:20 2019
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target SVD_DRIVER_BD.bd
//Design      : SVD_DRIVER_BD
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "SVD_DRIVER_BD,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SVD_DRIVER_BD,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "SVD_DRIVER_BD.hwdef" *) 
module SVD_DRIVER_BD
   (i_CLK_0,
    i_CLK_EN_0,
    i_RST_0,
    o_DIGIT_1_0,
    o_DIGIT_2_0,
    o_DIGIT_3_0,
    o_DIGIT_4_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK_0, ASSOCIATED_RESET i_RST_0, CLK_DOMAIN SVD_DRIVER_BD_i_CLK_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input i_CLK_0;
  input i_CLK_EN_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RST_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input i_RST_0;
  output [3:0]o_DIGIT_1_0;
  output [3:0]o_DIGIT_2_0;
  output [3:0]o_DIGIT_3_0;
  output [3:0]o_DIGIT_4_0;

  wire [3:0]SVD_DRIVER_0_o_DIGIT_1;
  wire [3:0]SVD_DRIVER_0_o_DIGIT_2;
  wire [3:0]SVD_DRIVER_0_o_DIGIT_3;
  wire [3:0]SVD_DRIVER_0_o_DIGIT_4;
  wire i_CLK_0_1;
  wire i_CLK_EN_0_1;
  wire i_RST_0_1;

  assign i_CLK_0_1 = i_CLK_0;
  assign i_CLK_EN_0_1 = i_CLK_EN_0;
  assign i_RST_0_1 = i_RST_0;
  assign o_DIGIT_1_0[3:0] = SVD_DRIVER_0_o_DIGIT_1;
  assign o_DIGIT_2_0[3:0] = SVD_DRIVER_0_o_DIGIT_2;
  assign o_DIGIT_3_0[3:0] = SVD_DRIVER_0_o_DIGIT_3;
  assign o_DIGIT_4_0[3:0] = SVD_DRIVER_0_o_DIGIT_4;
  SVD_DRIVER_BD_SVD_DRIVER_0_0 SVD_DRIVER_0
       (.i_CLK(i_CLK_0_1),
        .i_CLK_EN(i_CLK_EN_0_1),
        .i_RST(i_RST_0_1),
        .o_DIGIT_1(SVD_DRIVER_0_o_DIGIT_1),
        .o_DIGIT_2(SVD_DRIVER_0_o_DIGIT_2),
        .o_DIGIT_3(SVD_DRIVER_0_o_DIGIT_3),
        .o_DIGIT_4(SVD_DRIVER_0_o_DIGIT_4));
endmodule
