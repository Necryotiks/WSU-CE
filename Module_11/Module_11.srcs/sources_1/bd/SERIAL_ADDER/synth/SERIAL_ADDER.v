//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu Nov  8 11:59:30 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target SERIAL_ADDER.bd
//Design      : SERIAL_ADDER
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "SERIAL_ADDER,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SERIAL_ADDER,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "SERIAL_ADDER.hwdef" *) 
module SERIAL_ADDER
   (i_A_0,
    i_B_0,
    i_CLK,
    i_RST,
    o_Cout_0,
    o_Sum_0);
  input i_A_0;
  input i_B_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, CLK_DOMAIN SERIAL_ADDER_clk_100MHz, FREQ_HZ 100000000, PHASE 0.000" *) input i_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RST, POLARITY ACTIVE_LOW" *) input i_RST;
  output o_Cout_0;
  output o_Sum_0;

  wire SerialAdder_0_o_Cout;
  wire SerialAdder_0_o_Sum;
  wire clk_100MHz_1;
  wire ext_reset_in_0_1;
  wire i_A_0_1;
  wire i_B_0_1;
  wire [0:0]rst_clk_100MHz_100M_peripheral_aresetn;

  assign clk_100MHz_1 = i_CLK;
  assign ext_reset_in_0_1 = i_RST;
  assign i_A_0_1 = i_A_0;
  assign i_B_0_1 = i_B_0;
  assign o_Cout_0 = SerialAdder_0_o_Cout;
  assign o_Sum_0 = SerialAdder_0_o_Sum;
  SERIAL_ADDER_SerialAdder_0_0 SerialAdder_0
       (.i_A(i_A_0_1),
        .i_B(i_B_0_1),
        .i_CLK(clk_100MHz_1),
        .i_RST(rst_clk_100MHz_100M_peripheral_aresetn),
        .o_Cout(SerialAdder_0_o_Cout),
        .o_Sum(SerialAdder_0_o_Sum));
  SERIAL_ADDER_rst_clk_100MHz_100M_0 rst_clk_100MHz_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_0_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_100MHz_1));
endmodule
