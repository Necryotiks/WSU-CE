//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Nov 19 21:29:56 2018
//Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
//Command     : generate_target SSD_TEST.bd
//Design      : SSD_TEST
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "SSD_TEST,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SSD_TEST,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "SSD_TEST.hwdef" *) 
module SSD_TEST
   (i_CLK,
    i_RST,
    i_React_0,
    i_Start_0,
    o_Digit_1_val_0,
    o_Digit_2_val_0,
    o_Digit_3_val_0,
    o_Digit_4_val_0,
    o_Ready_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, CLK_DOMAIN Reaction_Time_Averager_i_CLK, FREQ_HZ 100000000, PHASE 0.000" *) input i_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RST, POLARITY ACTIVE_LOW" *) input i_RST;
  input i_React_0;
  input i_Start_0;
  output [3:0]o_Digit_1_val_0;
  output [3:0]o_Digit_2_val_0;
  output [3:0]o_Digit_3_val_0;
  output [3:0]o_Digit_4_val_0;
  output [1:0]o_Ready_0;

  wire HZ_Counter_0_o_Out;
  wire [12:0]LSFR_0_o_OUT;
  wire RTM_FSM_0_o_CEN;
  wire [1:0]RTM_FSM_0_o_Ready;
  wire RTM_FSM_0_o_SWEN;
  wire i_CLK_1;
  wire i_RST_1;
  wire i_React_0_1;
  wire i_Start_0_1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [3:0]stopwatch_ssd_driver_0_o_Digit_1_val;
  wire [3:0]stopwatch_ssd_driver_0_o_Digit_2_val;
  wire [3:0]stopwatch_ssd_driver_0_o_Digit_3_val;
  wire [3:0]stopwatch_ssd_driver_0_o_Digit_4_val;

  assign i_CLK_1 = i_CLK;
  assign i_RST_1 = i_RST;
  assign i_React_0_1 = i_React_0;
  assign i_Start_0_1 = i_Start_0;
  assign o_Digit_1_val_0[3:0] = stopwatch_ssd_driver_0_o_Digit_1_val;
  assign o_Digit_2_val_0[3:0] = stopwatch_ssd_driver_0_o_Digit_2_val;
  assign o_Digit_3_val_0[3:0] = stopwatch_ssd_driver_0_o_Digit_3_val;
  assign o_Digit_4_val_0[3:0] = stopwatch_ssd_driver_0_o_Digit_4_val;
  assign o_Ready_0[1:0] = RTM_FSM_0_o_Ready;
  SSD_TEST_HZ_Counter_0_0 HZ_Counter_0
       (.i_CLK(i_CLK_1),
        .i_RST(proc_sys_reset_0_peripheral_aresetn),
        .o_Out(HZ_Counter_0_o_Out));
  SSD_TEST_LSFR_0_0 LSFR_0
       (.i_CLK(i_CLK_1),
        .i_EN(RTM_FSM_0_o_CEN),
        .i_RST(proc_sys_reset_0_peripheral_aresetn),
        .o_OUT(LSFR_0_o_OUT));
  SSD_TEST_RTM_FSM_0_0 RTM_FSM_0
       (.i_CLK1KHZ(HZ_Counter_0_o_Out),
        .i_CVAL(LSFR_0_o_OUT),
        .i_RST(proc_sys_reset_0_peripheral_aresetn),
        .i_React(i_React_0_1),
        .i_Start(i_Start_0_1),
        .o_CEN(RTM_FSM_0_o_CEN),
        .o_Ready(RTM_FSM_0_o_Ready),
        .o_SWEN(RTM_FSM_0_o_SWEN));
  SSD_TEST_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(i_RST_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(i_CLK_1));
  SSD_TEST_stopwatch_ssd_driver_0_0 stopwatch_ssd_driver_0
       (.i_CLK_EN(RTM_FSM_0_o_SWEN),
        .i_RST(proc_sys_reset_0_peripheral_aresetn),
        .i_SUBCLK(HZ_Counter_0_o_Out),
        .o_Digit_1_val(stopwatch_ssd_driver_0_o_Digit_1_val),
        .o_Digit_2_val(stopwatch_ssd_driver_0_o_Digit_2_val),
        .o_Digit_3_val(stopwatch_ssd_driver_0_o_Digit_3_val),
        .o_Digit_4_val(stopwatch_ssd_driver_0_o_Digit_4_val));
endmodule
