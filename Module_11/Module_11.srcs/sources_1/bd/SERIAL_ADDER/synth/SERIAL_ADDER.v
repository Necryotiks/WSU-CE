//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Tue Nov 13 14:43:37 2018
//Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
//Command     : generate_target SERIAL_ADDER.bd
//Design      : SERIAL_ADDER
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "SERIAL_ADDER,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SERIAL_ADDER,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=5,synth_mode=Global}" *) (* HW_HANDOFF = "SERIAL_ADDER.hwdef" *) 
module SERIAL_ADDER
   (clk_100MHz,
    i_A_0,
    i_B_0,
    o_Cout_0,
    o_Sum_0,
    reset_rtl_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN SERIAL_ADDER_clk_100MHz, FREQ_HZ 100000000, PHASE 0.000" *) input clk_100MHz;
  input i_A_0;
  input i_B_0;
  output o_Cout_0;
  output o_Sum_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL_0, POLARITY ACTIVE_LOW" *) input reset_rtl_0;

  wire SerialAdder_0_o_Cout;
  wire SerialAdder_0_o_Sum;
  wire clk_100MHz_1;
  wire i_A_0_1;
  wire i_B_0_1;
  wire reset_rtl_0_1;
  wire [0:0]rst_clk_100MHz_100M_peripheral_aresetn;

  assign clk_100MHz_1 = clk_100MHz;
  assign i_A_0_1 = i_A_0;
  assign i_B_0_1 = i_B_0;
  assign o_Cout_0 = SerialAdder_0_o_Cout;
  assign o_Sum_0 = SerialAdder_0_o_Sum;
  assign reset_rtl_0_1 = reset_rtl_0;
  SERIAL_ADDER_SerialAdder_0_1 SerialAdder_0
       (.i_A(i_A_0_1),
        .i_B(i_B_0_1),
        .i_CLK(clk_100MHz_1),
        .i_RST(rst_clk_100MHz_100M_peripheral_aresetn),
        .o_Cout(SerialAdder_0_o_Cout),
        .o_Sum(SerialAdder_0_o_Sum));
  SERIAL_ADDER_rst_clk_100MHz_100M_1 rst_clk_100MHz_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_rtl_0_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_100MHz_1));
endmodule
