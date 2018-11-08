//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu Nov  8 11:49:55 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target STOPWATCH.bd
//Design      : STOPWATCH
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "STOPWATCH,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=STOPWATCH,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=3,synth_mode=Global}" *) (* HW_HANDOFF = "STOPWATCH.hwdef" *) 
module STOPWATCH
   (i_CLK,
    i_Inc_0,
    i_RST_0,
    i_Start_0,
    i_Stop_0,
    o_Anodes_0,
    o_Cathodes_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, CLK_DOMAIN STOPWATCH_clk_100MHz, FREQ_HZ 100000000, PHASE 0.000" *) input i_CLK;
  input i_Inc_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RST_0, POLARITY ACTIVE_LOW" *) input i_RST_0;
  input i_Start_0;
  input i_Stop_0;
  output [3:0]o_Anodes_0;
  output [6:0]o_Cathodes_0;

  wire HZ_Counter_0_o_Out;
  wire clk_100MHz_1;
  wire i_Inc_0_1;
  wire i_RST_0_1;
  wire i_Start_0_1;
  wire i_Stop_0_1;
  wire [0:0]rst_clk_100MHz_100M_peripheral_aresetn;
  wire [6:0]ssd_dec_0_o_Cathodes;
  wire [3:0]ssd_mux_0_o_Anodes;
  wire [3:0]ssd_mux_0_o_Out;
  wire stopwatchFSM_0_o_ENABLE;
  wire [3:0]stopwatch_ssd_driver_0_o_Digit_1_val;
  wire [3:0]stopwatch_ssd_driver_0_o_Digit_2_val;
  wire [3:0]stopwatch_ssd_driver_0_o_Digit_3_val;
  wire [3:0]stopwatch_ssd_driver_0_o_Digit_4_val;

  assign clk_100MHz_1 = i_CLK;
  assign i_Inc_0_1 = i_Inc_0;
  assign i_RST_0_1 = i_RST_0;
  assign i_Start_0_1 = i_Start_0;
  assign i_Stop_0_1 = i_Stop_0;
  assign o_Anodes_0[3:0] = ssd_mux_0_o_Anodes;
  assign o_Cathodes_0[6:0] = ssd_dec_0_o_Cathodes;
  STOPWATCH_HZ_Counter_0_0 HZ_Counter_0
       (.i_CLK(clk_100MHz_1),
        .i_RST(rst_clk_100MHz_100M_peripheral_aresetn),
        .o_Out(HZ_Counter_0_o_Out));
  STOPWATCH_rst_clk_100MHz_100M_0 rst_clk_100MHz_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(i_RST_0_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_100MHz_1));
  STOPWATCH_ssd_dec_0_0 ssd_dec_0
       (.i_CLK(clk_100MHz_1),
        .i_Num(ssd_mux_0_o_Out),
        .o_Cathodes(ssd_dec_0_o_Cathodes));
  STOPWATCH_ssd_mux_0_0 ssd_mux_0
       (.i_CLK(clk_100MHz_1),
        .i_Digit_1(stopwatch_ssd_driver_0_o_Digit_1_val),
        .i_Digit_2(stopwatch_ssd_driver_0_o_Digit_2_val),
        .i_Digit_3(stopwatch_ssd_driver_0_o_Digit_3_val),
        .i_Digit_4(stopwatch_ssd_driver_0_o_Digit_4_val),
        .o_Anodes(ssd_mux_0_o_Anodes),
        .o_Out(ssd_mux_0_o_Out));
  STOPWATCH_stopwatchFSM_0_0 stopwatchFSM_0
       (.i_CLK1KHZ(HZ_Counter_0_o_Out),
        .i_Inc(i_Inc_0_1),
        .i_RST(i_RST_0_1),
        .i_Start(i_Start_0_1),
        .i_Stop(i_Stop_0_1),
        .o_ENABLE(stopwatchFSM_0_o_ENABLE));
  STOPWATCH_stopwatch_ssd_driver_0_0 stopwatch_ssd_driver_0
       (.i_RST(rst_clk_100MHz_100M_peripheral_aresetn),
        .i_SUBCLK(stopwatchFSM_0_o_ENABLE),
        .o_Digit_1_val(stopwatch_ssd_driver_0_o_Digit_1_val),
        .o_Digit_2_val(stopwatch_ssd_driver_0_o_Digit_2_val),
        .o_Digit_3_val(stopwatch_ssd_driver_0_o_Digit_3_val),
        .o_Digit_4_val(stopwatch_ssd_driver_0_o_Digit_4_val));
endmodule
