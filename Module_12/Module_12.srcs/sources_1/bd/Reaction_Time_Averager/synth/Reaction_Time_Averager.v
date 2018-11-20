//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Nov 19 22:35:25 2018
//Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
//Command     : generate_target Reaction_Time_Averager.bd
//Design      : Reaction_Time_Averager
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Reaction_Time_Averager,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Reaction_Time_Averager,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=6,synth_mode=Global}" *) (* HW_HANDOFF = "Reaction_Time_Averager.hwdef" *) 
module Reaction_Time_Averager
   (i_CLK,
    i_RST,
    i_React_0,
    i_Start_0,
    o_Anodes_0,
    o_Cathodes_0,
    o_Ready_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, CLK_DOMAIN Reaction_Time_Averager_i_CLK, FREQ_HZ 100000000, PHASE 0.000" *) input i_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RST, POLARITY ACTIVE_LOW" *) input i_RST;
  input i_React_0;
  input i_Start_0;
  output [3:0]o_Anodes_0;
  output [6:0]o_Cathodes_0;
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
  wire [6:0]ssd_dec_0_o_Cathodes;
  wire [3:0]ssd_mux_0_o_Anodes;
  wire [3:0]ssd_mux_0_o_Out;
  wire [3:0]stopwatch_ssd_driver_0_o_Digit_1_val;
  wire [3:0]stopwatch_ssd_driver_0_o_Digit_2_val;
  wire [3:0]stopwatch_ssd_driver_0_o_Digit_3_val;
  wire [3:0]stopwatch_ssd_driver_0_o_Digit_4_val;

  assign i_CLK_1 = i_CLK;
  assign i_RST_1 = i_RST;
  assign i_React_0_1 = i_React_0;
  assign i_Start_0_1 = i_Start_0;
  assign o_Anodes_0[3:0] = ssd_mux_0_o_Anodes;
  assign o_Cathodes_0[6:0] = ssd_dec_0_o_Cathodes;
  assign o_Ready_0[1:0] = RTM_FSM_0_o_Ready;
  Reaction_Time_Averager_HZ_Counter_0_0 HZ_Counter_0
       (.i_CLK(i_CLK_1),
        .i_RST(proc_sys_reset_0_peripheral_aresetn),
        .o_Out(HZ_Counter_0_o_Out));
  Reaction_Time_Averager_LSFR_0_0 LSFR_0
       (.i_CLK(i_CLK_1),
        .i_EN(RTM_FSM_0_o_CEN),
        .i_RST(proc_sys_reset_0_peripheral_aresetn),
        .o_OUT(LSFR_0_o_OUT));
  Reaction_Time_Averager_RTM_FSM_0_0 RTM_FSM_0
       (.i_CLK1KHZ(HZ_Counter_0_o_Out),
        .i_CVAL(LSFR_0_o_OUT),
        .i_RST(proc_sys_reset_0_peripheral_aresetn),
        .i_React(i_React_0_1),
        .i_Start(i_Start_0_1),
        .o_CEN(RTM_FSM_0_o_CEN),
        .o_Ready(RTM_FSM_0_o_Ready),
        .o_SWEN(RTM_FSM_0_o_SWEN));
  Reaction_Time_Averager_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(i_RST_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(i_CLK_1));
  Reaction_Time_Averager_ssd_dec_0_0 ssd_dec_0
       (.i_CLK(i_CLK_1),
        .i_Num(ssd_mux_0_o_Out),
        .o_Cathodes(ssd_dec_0_o_Cathodes));
  Reaction_Time_Averager_ssd_mux_0_0 ssd_mux_0
       (.i_CLK(i_CLK_1),
        .i_Digit_1(stopwatch_ssd_driver_0_o_Digit_1_val),
        .i_Digit_2(stopwatch_ssd_driver_0_o_Digit_2_val),
        .i_Digit_3(stopwatch_ssd_driver_0_o_Digit_3_val),
        .i_Digit_4(stopwatch_ssd_driver_0_o_Digit_4_val),
        .o_Anodes(ssd_mux_0_o_Anodes),
        .o_Out(ssd_mux_0_o_Out));
  Reaction_Time_Averager_stopwatch_ssd_driver_0_0 stopwatch_ssd_driver_0
       (.i_CLK_EN(RTM_FSM_0_o_SWEN),
        .i_RST(proc_sys_reset_0_peripheral_aresetn),
        .i_SUBCLK(HZ_Counter_0_o_Out),
        .o_Digit_1_val(stopwatch_ssd_driver_0_o_Digit_1_val),
        .o_Digit_2_val(stopwatch_ssd_driver_0_o_Digit_2_val),
        .o_Digit_3_val(stopwatch_ssd_driver_0_o_Digit_3_val),
        .o_Digit_4_val(stopwatch_ssd_driver_0_o_Digit_4_val));
endmodule
