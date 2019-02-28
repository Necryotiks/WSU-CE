//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sat Feb 23 12:05:49 2019
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target Clock_Divider.bd
//Design      : Clock_Divider
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Clock_Divider,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Clock_Divider,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Clock_Divider.hwdef" *) 
module Clock_Divider
   (clk_100MHz,
    i_RST_0,
    o_Out_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, ASSOCIATED_RESET i_RST_0, CLK_DOMAIN Clock_Divider_clk_100MHz, FREQ_HZ 100000000, PHASE 0.000" *) input clk_100MHz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RST_0, POLARITY ACTIVE_LOW" *) input i_RST_0;
  output o_Out_0;

  wire HZ_Counter_0_o_Out;
  wire clk_100MHz_1;
  wire i_RST_0_1;

  assign clk_100MHz_1 = clk_100MHz;
  assign i_RST_0_1 = i_RST_0;
  assign o_Out_0 = HZ_Counter_0_o_Out;
  Clock_Divider_HZ_Counter_0_0 HZ_Counter_0
       (.i_CLK(clk_100MHz_1),
        .i_RST(i_RST_0_1),
        .o_Out(HZ_Counter_0_o_Out));
endmodule
