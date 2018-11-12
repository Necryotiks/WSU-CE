//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Nov 12 00:19:02 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target S_A_FSM.bd
//Design      : S_A_FSM
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "S_A_FSM,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=S_A_FSM,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=7,synth_mode=Global}" *) (* HW_HANDOFF = "S_A_FSM.hwdef" *) 
module S_A_FSM
   (clk_100MHz,
    i_IN_0,
    i_IN_1,
    i_SFT_LD_0,
    o_OUT_0,
    reset_rtl_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN S_A_FSM_clk_100MHz, FREQ_HZ 100000000, PHASE 0.000" *) input clk_100MHz;
  input [7:0]i_IN_0;
  input [7:0]i_IN_1;
  input i_SFT_LD_0;
  output [7:0]o_OUT_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL_0, POLARITY ACTIVE_LOW" *) input reset_rtl_0;

  wire PISO_0_o_OUT;
  wire PISO_1_o_OUT;
  wire [7:0]SIPO_0_o_OUT;
  wire SerialAdder_0_o_Cout;
  wire SerialAdder_0_o_Sum;
  wire clk_100MHz_1;
  wire dff_0_o_Q;
  wire [7:0]i_IN_0_1;
  wire [7:0]i_IN_1_1;
  wire i_SFT_LD_0_1;
  wire reset_rtl_0_1;
  wire [0:0]rst_clk_100MHz_100M_peripheral_aresetn;

  assign clk_100MHz_1 = clk_100MHz;
  assign i_IN_0_1 = i_IN_0[7:0];
  assign i_IN_1_1 = i_IN_1[7:0];
  assign i_SFT_LD_0_1 = i_SFT_LD_0;
  assign o_OUT_0[7:0] = SIPO_0_o_OUT;
  assign reset_rtl_0_1 = reset_rtl_0;
  S_A_FSM_PISO_0_0 PISO_0
       (.i_CLK(clk_100MHz_1),
        .i_IN(i_IN_0_1),
        .i_SFT_LD(i_SFT_LD_0_1),
        .o_OUT(PISO_0_o_OUT));
  S_A_FSM_PISO_0_1 PISO_1
       (.i_CLK(clk_100MHz_1),
        .i_IN(i_IN_1_1),
        .i_SFT_LD(i_SFT_LD_0_1),
        .o_OUT(PISO_1_o_OUT));
  S_A_FSM_SIPO_0_0 SIPO_0
       (.i_CLK(clk_100MHz_1),
        .i_SDI(SerialAdder_0_o_Sum),
        .i_SFT(i_SFT_LD_0_1),
        .o_OUT(SIPO_0_o_OUT));
  S_A_FSM_SerialAdder_0_0 SerialAdder_0
       (.i_A(PISO_0_o_OUT),
        .i_B(PISO_1_o_OUT),
        .i_CLK(clk_100MHz_1),
        .i_Cin(dff_0_o_Q),
        .i_RST(rst_clk_100MHz_100M_peripheral_aresetn),
        .o_Cout(SerialAdder_0_o_Cout),
        .o_Sum(SerialAdder_0_o_Sum));
  S_A_FSM_dff_0_0 dff_0
       (.i_CLK(clk_100MHz_1),
        .i_D(SerialAdder_0_o_Cout),
        .i_RST(rst_clk_100MHz_100M_peripheral_aresetn),
        .o_Q(dff_0_o_Q));
  S_A_FSM_rst_clk_100MHz_100M_0 rst_clk_100MHz_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_rtl_0_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_100MHz_1));
endmodule
