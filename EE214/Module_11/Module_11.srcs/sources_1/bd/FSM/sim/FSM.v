//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu Nov  8 11:58:51 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target FSM.bd
//Design      : FSM
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "FSM,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=FSM,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "FSM.hwdef" *) 
module FSM
   (i_CLK,
    i_Inc_0,
    i_RST,
    i_Start_0,
    i_Stop_0,
    o_ENABLE_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, CLK_DOMAIN FSM_clk_100MHz, FREQ_HZ 100000000, PHASE 0.000" *) input i_CLK;
  input i_Inc_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RST, POLARITY ACTIVE_LOW" *) input i_RST;
  input i_Start_0;
  input i_Stop_0;
  output o_ENABLE_0;

  wire HZ_Counter_0_o_Out;
  wire clk_100MHz_1;
  wire i_Inc_0_1;
  wire i_Start_0_1;
  wire i_Stop_0_1;
  wire reset_rtl_0_1;
  wire [0:0]rst_clk_100MHz_100M_peripheral_aresetn;
  wire stopwatchFSM_0_o_ENABLE;

  assign clk_100MHz_1 = i_CLK;
  assign i_Inc_0_1 = i_Inc_0;
  assign i_Start_0_1 = i_Start_0;
  assign i_Stop_0_1 = i_Stop_0;
  assign o_ENABLE_0 = stopwatchFSM_0_o_ENABLE;
  assign reset_rtl_0_1 = i_RST;
  FSM_HZ_Counter_0_0 HZ_Counter_0
       (.i_CLK(clk_100MHz_1),
        .i_RST(rst_clk_100MHz_100M_peripheral_aresetn),
        .o_Out(HZ_Counter_0_o_Out));
  FSM_rst_clk_100MHz_100M_0 rst_clk_100MHz_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_rtl_0_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_100MHz_1));
  FSM_stopwatchFSM_0_0 stopwatchFSM_0
       (.i_CLK1KHZ(HZ_Counter_0_o_Out),
        .i_Inc(i_Inc_0_1),
        .i_RST(rst_clk_100MHz_100M_peripheral_aresetn),
        .i_Start(i_Start_0_1),
        .i_Stop(i_Stop_0_1),
        .o_ENABLE(stopwatchFSM_0_o_ENABLE));
endmodule
