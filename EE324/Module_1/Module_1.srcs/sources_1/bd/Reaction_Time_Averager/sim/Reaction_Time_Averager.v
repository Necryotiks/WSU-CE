//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Thu Feb 28 16:57:39 2019
//Host        : Necryotiks running 64-bit unknown
//Command     : generate_target Reaction_Time_Averager.bd
//Design      : Reaction_Time_Averager
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Reaction_Time_Averager,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Reaction_Time_Averager,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=19,numReposBlks=19,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=14,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=11,synth_mode=Global}" *) (* HW_HANDOFF = "Reaction_Time_Averager.hwdef" *) 
module Reaction_Time_Averager
   (i_CLK,
    i_RST,
    i_React_0,
    i_Start_0,
    i_Terminate_0,
    o_Anodes_0,
    o_Cathodes_0,
    o_Ready_0,
    o_T_NUM_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, CLK_DOMAIN Reaction_Time_Averager_i_CLK, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input i_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input i_RST;
  input i_React_0;
  input i_Start_0;
  input i_Terminate_0;
  output [3:0]o_Anodes_0;
  output [6:0]o_Cathodes_0;
  output [1:0]o_Ready_0;
  output [2:0]o_T_NUM_0;

  wire [13:0]Accumuator_0_o_OUT;
  wire [13:0]BCD_TO_BINARY_0_o_DATA;
  wire [15:0]BINARY_TO_BCD_0_o_BCD;
  wire [3:0]BINARY_TO_BCD_0_o_Digit1;
  wire [3:0]BINARY_TO_BCD_0_o_Digit2;
  wire [3:0]BINARY_TO_BCD_0_o_Digit3;
  wire [3:0]BINARY_TO_BCD_0_o_Digit4;
  wire Debounce_RTM_0_o_Assert;
  wire Debounce_RTM_1_o_Assert;
  wire Debounce_RTM_2_o_Assert;
  wire [13:0]Divider_0_o_OUT;
  wire [3:0]EXTRA_THICC_MUX_0_o_Digit_1;
  wire [3:0]EXTRA_THICC_MUX_0_o_Digit_2;
  wire [3:0]EXTRA_THICC_MUX_0_o_Digit_3;
  wire [3:0]EXTRA_THICC_MUX_0_o_Digit_4;
  wire HZ_Counter_0_o_Out;
  wire [12:0]LSFR_0_o_OUT;
  wire RTM_FSM_0_o_ACC_EN;
  wire RTM_FSM_0_o_CEN;
  wire RTM_FSM_0_o_DONE;
  wire [1:0]RTM_FSM_0_o_Ready;
  wire RTM_FSM_0_o_SRST;
  wire RTM_FSM_0_o_SWEN;
  wire [2:0]RTM_FSM_0_o_TRIAL_NUM;
  wire [2:0]RTM_FSM_0_o_T_NUM;
  wire i_CLK_1;
  wire i_RST_1;
  wire i_React_0_1;
  wire i_Start_0_1;
  wire i_Terminate_0_1;
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
  assign i_Terminate_0_1 = i_Terminate_0;
  assign o_Anodes_0[3:0] = ssd_mux_0_o_Anodes;
  assign o_Cathodes_0[6:0] = ssd_dec_0_o_Cathodes;
  assign o_Ready_0[1:0] = RTM_FSM_0_o_Ready;
  assign o_T_NUM_0[2:0] = RTM_FSM_0_o_T_NUM;
  Reaction_Time_Averager_Accumuator_0_0 Accumuator_0
       (.i_CLK(HZ_Counter_0_o_Out),
        .i_CLK_EN(RTM_FSM_0_o_ACC_EN),
        .i_DATA(BCD_TO_BINARY_0_o_DATA),
        .i_RST(proc_sys_reset_0_peripheral_aresetn),
        .o_OUT(Accumuator_0_o_OUT));
  Reaction_Time_Averager_BCD_TO_BINARY_0_0 BCD_TO_BINARY_0
       (.i_CLK(HZ_Counter_0_o_Out),
        .i_Digit1(stopwatch_ssd_driver_0_o_Digit_1_val),
        .i_Digit2(stopwatch_ssd_driver_0_o_Digit_2_val),
        .i_Digit3(stopwatch_ssd_driver_0_o_Digit_3_val),
        .i_Digit4(stopwatch_ssd_driver_0_o_Digit_4_val),
        .o_DATA(BCD_TO_BINARY_0_o_DATA));
  Reaction_Time_Averager_BINARY_TO_BCD_0_0 BINARY_TO_BCD_0
       (.i_Binary(Divider_0_o_OUT),
        .i_Clock(HZ_Counter_0_o_Out),
        .i_Start(RTM_FSM_0_o_ACC_EN),
        .o_BCD(BINARY_TO_BCD_0_o_BCD));
  Reaction_Time_Averager_Debounce_RTM_0_0 Debounce_RTM_0
       (.i_CLK(i_CLK_1),
        .i_RST(proc_sys_reset_0_peripheral_aresetn),
        .i_Signal(i_Start_0_1),
        .o_Assert(Debounce_RTM_0_o_Assert));
  Reaction_Time_Averager_Debounce_RTM_0_1 Debounce_RTM_1
       (.i_CLK(i_CLK_1),
        .i_RST(proc_sys_reset_0_peripheral_aresetn),
        .i_Signal(i_Terminate_0_1),
        .o_Assert(Debounce_RTM_1_o_Assert));
  Reaction_Time_Averager_Debounce_RTM_0_2 Debounce_RTM_2
       (.i_CLK(i_CLK_1),
        .i_RST(proc_sys_reset_0_peripheral_aresetn),
        .i_Signal(i_React_0_1),
        .o_Assert(Debounce_RTM_2_o_Assert));
  Reaction_Time_Averager_Divider_0_0 Divider_0
       (.i_CLK(HZ_Counter_0_o_Out),
        .i_DATA(Accumuator_0_o_OUT),
        .i_TC(RTM_FSM_0_o_TRIAL_NUM),
        .o_OUT(Divider_0_o_OUT));
  Reaction_Time_Averager_EXTRA_THICC_MUX_0_0 EXTRA_THICC_MUX_0
       (.i_CLK(i_CLK_1),
        .i_SW_Digit_1(stopwatch_ssd_driver_0_o_Digit_1_val),
        .i_SW_Digit_2(stopwatch_ssd_driver_0_o_Digit_2_val),
        .i_SW_Digit_3(stopwatch_ssd_driver_0_o_Digit_3_val),
        .i_SW_Digit_4(stopwatch_ssd_driver_0_o_Digit_4_val),
        .i_Sel(RTM_FSM_0_o_DONE),
        .i_T_Digit_1(BINARY_TO_BCD_0_o_Digit1),
        .i_T_Digit_2(BINARY_TO_BCD_0_o_Digit2),
        .i_T_Digit_3(BINARY_TO_BCD_0_o_Digit3),
        .i_T_Digit_4(BINARY_TO_BCD_0_o_Digit4),
        .o_Digit_1(EXTRA_THICC_MUX_0_o_Digit_1),
        .o_Digit_2(EXTRA_THICC_MUX_0_o_Digit_2),
        .o_Digit_3(EXTRA_THICC_MUX_0_o_Digit_3),
        .o_Digit_4(EXTRA_THICC_MUX_0_o_Digit_4));
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
        .i_React(Debounce_RTM_2_o_Assert),
        .i_Start(Debounce_RTM_0_o_Assert),
        .i_Terminate(Debounce_RTM_1_o_Assert),
        .o_ACC_EN(RTM_FSM_0_o_ACC_EN),
        .o_CEN(RTM_FSM_0_o_CEN),
        .o_DONE(RTM_FSM_0_o_DONE),
        .o_Ready(RTM_FSM_0_o_Ready),
        .o_SRST(RTM_FSM_0_o_SRST),
        .o_SWEN(RTM_FSM_0_o_SWEN),
        .o_TRIAL_NUM(RTM_FSM_0_o_TRIAL_NUM),
        .o_T_NUM(RTM_FSM_0_o_T_NUM));
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
        .i_Digit_1(EXTRA_THICC_MUX_0_o_Digit_1),
        .i_Digit_2(EXTRA_THICC_MUX_0_o_Digit_2),
        .i_Digit_3(EXTRA_THICC_MUX_0_o_Digit_3),
        .i_Digit_4(EXTRA_THICC_MUX_0_o_Digit_4),
        .o_Anodes(ssd_mux_0_o_Anodes),
        .o_Out(ssd_mux_0_o_Out));
  Reaction_Time_Averager_stopwatch_ssd_driver_0_0 stopwatch_ssd_driver_0
       (.i_CLK_EN(RTM_FSM_0_o_SWEN),
        .i_RST(proc_sys_reset_0_peripheral_aresetn),
        .i_SRST(RTM_FSM_0_o_SRST),
        .i_SUBCLK(HZ_Counter_0_o_Out),
        .o_Digit_1_val(stopwatch_ssd_driver_0_o_Digit_1_val),
        .o_Digit_2_val(stopwatch_ssd_driver_0_o_Digit_2_val),
        .o_Digit_3_val(stopwatch_ssd_driver_0_o_Digit_3_val),
        .o_Digit_4_val(stopwatch_ssd_driver_0_o_Digit_4_val));
  Reaction_Time_Averager_xlslice_0_0 xlslice_0
       (.Din(BINARY_TO_BCD_0_o_BCD),
        .Dout(BINARY_TO_BCD_0_o_Digit1));
  Reaction_Time_Averager_xlslice_0_1 xlslice_1
       (.Din(BINARY_TO_BCD_0_o_BCD),
        .Dout(BINARY_TO_BCD_0_o_Digit2));
  Reaction_Time_Averager_xlslice_0_2 xlslice_2
       (.Din(BINARY_TO_BCD_0_o_BCD),
        .Dout(BINARY_TO_BCD_0_o_Digit3));
  Reaction_Time_Averager_xlslice_0_3 xlslice_3
       (.Din(BINARY_TO_BCD_0_o_BCD),
        .Dout(BINARY_TO_BCD_0_o_Digit4));
endmodule
