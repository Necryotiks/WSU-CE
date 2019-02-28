//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Fri Nov  9 20:19:19 2018
//Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
//Command     : generate_target test.bd
//Design      : test
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=test,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "test.hwdef" *) 
module test
   (i_CLK_0,
    i_RST_0,
    i_SDI_0,
    o_LED_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK_0, ASSOCIATED_RESET i_RST_0, CLK_DOMAIN test_i_CLK_0, FREQ_HZ 100000000, PHASE 0.000" *) input i_CLK_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RST_0, POLARITY ACTIVE_LOW" *) input i_RST_0;
  input i_SDI_0;
  output [7:0]o_LED_0;

  wire [7:0]SIPO_0_o_LED;
  wire i_CLK_0_1;
  wire i_RST_0_1;
  wire i_SDI_0_1;

  assign i_CLK_0_1 = i_CLK_0;
  assign i_RST_0_1 = i_RST_0;
  assign i_SDI_0_1 = i_SDI_0;
  assign o_LED_0[7:0] = SIPO_0_o_LED;
  test_SIPO_0_0 SIPO_0
       (.i_CLK(i_CLK_0_1),
        .i_RST(i_RST_0_1),
        .i_SDI(i_SDI_0_1),
        .o_LED(SIPO_0_o_LED));
endmodule
