//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sat Nov 10 21:34:09 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target SERIAL_ADDER.bd
//Design      : SERIAL_ADDER
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "SERIAL_ADDER,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SERIAL_ADDER,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=5,synth_mode=Global}" *) (* HW_HANDOFF = "SERIAL_ADDER.hwdef" *) 
module SERIAL_ADDER
   (i_CLK,
    i_IN_0,
    i_IN_1,
    i_RST,
    i_SFT_LD_0,
    o_OUT_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, CLK_DOMAIN SERIAL_ADDER_clk_100MHz, FREQ_HZ 100000000, PHASE 0.000" *) input i_CLK;
  input [7:0]i_IN_0;
  input [7:0]i_IN_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RST, POLARITY ACTIVE_LOW" *) input i_RST;
  input i_SFT_LD_0;
  output [7:0]o_OUT_0;

  wire PISO_0_o_OUT;
  wire PISO_1_o_OUT;
  wire [7:0]SIPO_0_o_OUT;
  wire SerialAdder_0_o_Cout;
  wire SerialAdder_0_o_Sum;
  wire clk_100MHz_1;
  wire dff_0_o_Q;
  wire ext_reset_in_0_1;
  wire [7:0]i_IN_0_1;
  wire [7:0]i_IN_1_1;
  wire i_SFT_LD_0_1;
  wire [0:0]rst_clk_100MHz_100M_peripheral_aresetn;

  assign clk_100MHz_1 = i_CLK;
  assign ext_reset_in_0_1 = i_RST;
  assign i_IN_0_1 = i_IN_0[7:0];
  assign i_IN_1_1 = i_IN_1[7:0];
  assign i_SFT_LD_0_1 = i_SFT_LD_0;
  assign o_OUT_0[7:0] = SIPO_0_o_OUT;
  SERIAL_ADDER_PISO_0_0 PISO_0
       (.i_CLK(clk_100MHz_1),
        .i_IN(i_IN_1_1),
        .i_SFT_LD(i_SFT_LD_0_1),
        .o_OUT(PISO_0_o_OUT));
  SERIAL_ADDER_PISO_0_1 PISO_1
       (.i_CLK(clk_100MHz_1),
        .i_IN(i_IN_0_1),
        .i_SFT_LD(i_SFT_LD_0_1),
        .o_OUT(PISO_1_o_OUT));
  SERIAL_ADDER_SIPO_0_0 SIPO_0
       (.i_CLK(clk_100MHz_1),
        .i_SDI(SerialAdder_0_o_Sum),
        .i_SFT(i_SFT_LD_0_1),
        .o_OUT(SIPO_0_o_OUT));
  SERIAL_ADDER_SerialAdder_0_0 SerialAdder_0
       (.i_A(PISO_0_o_OUT),
        .i_B(PISO_1_o_OUT),
        .i_CLK(clk_100MHz_1),
        .i_Cin(dff_0_o_Q),
        .i_RST(rst_clk_100MHz_100M_peripheral_aresetn),
        .o_Cout(SerialAdder_0_o_Cout),
        .o_Sum(SerialAdder_0_o_Sum));
  SERIAL_ADDER_dff_0_0 dff_0
       (.i_CLK(clk_100MHz_1),
        .i_D(SerialAdder_0_o_Cout),
        .i_RST(rst_clk_100MHz_100M_peripheral_aresetn),
        .o_Q(dff_0_o_Q));
  SERIAL_ADDER_rst_clk_100MHz_100M_0 rst_clk_100MHz_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_0_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_100MHz_1));
endmodule
