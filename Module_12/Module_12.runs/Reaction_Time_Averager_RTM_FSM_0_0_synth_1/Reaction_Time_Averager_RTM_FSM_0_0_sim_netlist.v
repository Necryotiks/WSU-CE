// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 23 14:03:43 2018
// Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_RTM_FSM_0_0_sim_netlist.v
// Design      : Reaction_Time_Averager_RTM_FSM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RTM_FSM
   (Q,
    o_Ready,
    o_ACC_EN,
    o_DONE,
    o_SRST,
    o_CEN,
    i_CVAL,
    i_CLK1KHZ,
    i_RST,
    i_Start,
    i_Terminate,
    i_React);
  output [2:0]Q;
  output [1:0]o_Ready;
  output o_ACC_EN;
  output o_DONE;
  output o_SRST;
  output o_CEN;
  input [12:0]i_CVAL;
  input i_CLK1KHZ;
  input i_RST;
  input i_Start;
  input i_Terminate;
  input i_React;

  wire \FSM_onehot_r_CURRENT_STATE[0]_i_1_n_0 ;
  wire \FSM_onehot_r_CURRENT_STATE[0]_i_2_n_0 ;
  wire \FSM_onehot_r_CURRENT_STATE[1]_i_1_n_0 ;
  wire \FSM_onehot_r_CURRENT_STATE[2]_i_1_n_0 ;
  wire \FSM_onehot_r_CURRENT_STATE[3]_i_1_n_0 ;
  wire \FSM_onehot_r_CURRENT_STATE[4]_i_1_n_0 ;
  wire \FSM_onehot_r_CURRENT_STATE[4]_i_2_n_0 ;
  wire \FSM_onehot_r_CURRENT_STATE[4]_i_3_n_0 ;
  wire \FSM_onehot_r_CURRENT_STATE[5]_i_1_n_0 ;
  wire \FSM_onehot_r_CURRENT_STATE[5]_i_2_n_0 ;
  wire [2:0]Q;
  wire i_CLK1KHZ;
  wire [12:0]i_CVAL;
  wire i_RST;
  wire i_React;
  wire i_Start;
  wire i_Terminate;
  wire o_ACC_EN;
  wire o_CEN;
  wire o_DONE;
  wire [1:0]o_Ready;
  wire o_SRST;
  wire [2:0]p_0_in;
  wire [5:0]p_0_in__0;
  (* RTL_KEEP = "yes" *) wire r_COUNTER;
  wire \r_COUNTER[0]_i_2_n_0 ;
  wire [12:0]r_COUNTER_reg;
  wire \r_COUNTER_reg[0]_i_1_n_0 ;
  wire \r_COUNTER_reg[0]_i_1_n_1 ;
  wire \r_COUNTER_reg[0]_i_1_n_2 ;
  wire \r_COUNTER_reg[0]_i_1_n_3 ;
  wire \r_COUNTER_reg[0]_i_1_n_4 ;
  wire \r_COUNTER_reg[0]_i_1_n_5 ;
  wire \r_COUNTER_reg[0]_i_1_n_6 ;
  wire \r_COUNTER_reg[0]_i_1_n_7 ;
  wire \r_COUNTER_reg[12]_i_1_n_7 ;
  wire \r_COUNTER_reg[4]_i_1_n_0 ;
  wire \r_COUNTER_reg[4]_i_1_n_1 ;
  wire \r_COUNTER_reg[4]_i_1_n_2 ;
  wire \r_COUNTER_reg[4]_i_1_n_3 ;
  wire \r_COUNTER_reg[4]_i_1_n_4 ;
  wire \r_COUNTER_reg[4]_i_1_n_5 ;
  wire \r_COUNTER_reg[4]_i_1_n_6 ;
  wire \r_COUNTER_reg[4]_i_1_n_7 ;
  wire \r_COUNTER_reg[8]_i_1_n_0 ;
  wire \r_COUNTER_reg[8]_i_1_n_1 ;
  wire \r_COUNTER_reg[8]_i_1_n_2 ;
  wire \r_COUNTER_reg[8]_i_1_n_3 ;
  wire \r_COUNTER_reg[8]_i_1_n_4 ;
  wire \r_COUNTER_reg[8]_i_1_n_5 ;
  wire \r_COUNTER_reg[8]_i_1_n_6 ;
  wire \r_COUNTER_reg[8]_i_1_n_7 ;
  (* RTL_KEEP = "yes" *) wire r_DONE;
  (* RTL_KEEP = "yes" *) wire r_HOLD_COUNT;
  wire \r_HOLD_COUNT[2]_i_1_n_0 ;
  wire [5:0]r_HOLD_COUNT_reg__0;
  wire r_NEXT_STATE1_carry__0_n_3;
  wire r_NEXT_STATE1_carry_i_1__0_n_0;
  wire r_NEXT_STATE1_carry_i_1_n_0;
  wire r_NEXT_STATE1_carry_i_2_n_0;
  wire r_NEXT_STATE1_carry_i_3_n_0;
  wire r_NEXT_STATE1_carry_i_4_n_0;
  wire r_NEXT_STATE1_carry_n_0;
  wire r_NEXT_STATE1_carry_n_1;
  wire r_NEXT_STATE1_carry_n_2;
  wire r_NEXT_STATE1_carry_n_3;
  (* RTL_KEEP = "yes" *) wire r_Ready;
  (* RTL_KEEP = "yes" *) wire r_SWEN;
  (* RTL_KEEP = "yes" *) wire r_TRIAL_COUNT;
  wire [3:0]\NLW_r_COUNTER_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_r_COUNTER_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_r_NEXT_STATE1_carry_O_UNCONNECTED;
  wire [3:1]NLW_r_NEXT_STATE1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_r_NEXT_STATE1_carry__0_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h10FF1010)) 
    \FSM_onehot_r_CURRENT_STATE[0]_i_1 
       (.I0(i_Start),
        .I1(\FSM_onehot_r_CURRENT_STATE[0]_i_2_n_0 ),
        .I2(r_Ready),
        .I3(\FSM_onehot_r_CURRENT_STATE[4]_i_2_n_0 ),
        .I4(r_TRIAL_COUNT),
        .O(\FSM_onehot_r_CURRENT_STATE[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0222)) 
    \FSM_onehot_r_CURRENT_STATE[0]_i_2 
       (.I0(i_Terminate),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\FSM_onehot_r_CURRENT_STATE[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_r_CURRENT_STATE[1]_i_1 
       (.I0(i_Start),
        .I1(r_Ready),
        .I2(r_NEXT_STATE1_carry__0_n_3),
        .I3(r_COUNTER),
        .O(\FSM_onehot_r_CURRENT_STATE[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_r_CURRENT_STATE[2]_i_1 
       (.I0(r_NEXT_STATE1_carry__0_n_3),
        .I1(r_COUNTER),
        .I2(i_React),
        .I3(r_SWEN),
        .O(\FSM_onehot_r_CURRENT_STATE[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_r_CURRENT_STATE[3]_i_1 
       (.I0(r_SWEN),
        .I1(i_React),
        .O(\FSM_onehot_r_CURRENT_STATE[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8FFF8)) 
    \FSM_onehot_r_CURRENT_STATE[4]_i_1 
       (.I0(\FSM_onehot_r_CURRENT_STATE[4]_i_2_n_0 ),
        .I1(r_TRIAL_COUNT),
        .I2(\FSM_onehot_r_CURRENT_STATE[4]_i_3_n_0 ),
        .I3(r_HOLD_COUNT),
        .I4(\FSM_onehot_r_CURRENT_STATE[5]_i_2_n_0 ),
        .O(\FSM_onehot_r_CURRENT_STATE[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_r_CURRENT_STATE[4]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\FSM_onehot_r_CURRENT_STATE[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000200020)) 
    \FSM_onehot_r_CURRENT_STATE[4]_i_3 
       (.I0(r_Ready),
        .I1(i_Start),
        .I2(i_Terminate),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\FSM_onehot_r_CURRENT_STATE[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_r_CURRENT_STATE[5]_i_1 
       (.I0(r_DONE),
        .I1(\FSM_onehot_r_CURRENT_STATE[5]_i_2_n_0 ),
        .I2(r_HOLD_COUNT),
        .O(\FSM_onehot_r_CURRENT_STATE[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_onehot_r_CURRENT_STATE[5]_i_2 
       (.I0(r_HOLD_COUNT_reg__0[5]),
        .I1(r_HOLD_COUNT_reg__0[4]),
        .I2(r_HOLD_COUNT_reg__0[1]),
        .I3(r_HOLD_COUNT_reg__0[0]),
        .I4(r_HOLD_COUNT_reg__0[3]),
        .I5(r_HOLD_COUNT_reg__0[2]),
        .O(\FSM_onehot_r_CURRENT_STATE[5]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "s_COUNTDOWN:000010,s_SW_RUNNING:000100,s_SW_STOPPED:001000,s_GET_COUNTER:000001,s_HOLD:010000,s_COLLECTION_COMPLETE:100000" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_r_CURRENT_STATE_reg[0] 
       (.C(i_CLK1KHZ),
        .CE(1'b1),
        .D(\FSM_onehot_r_CURRENT_STATE[0]_i_1_n_0 ),
        .PRE(i_RST),
        .Q(r_Ready));
  (* FSM_ENCODED_STATES = "s_COUNTDOWN:000010,s_SW_RUNNING:000100,s_SW_STOPPED:001000,s_GET_COUNTER:000001,s_HOLD:010000,s_COLLECTION_COMPLETE:100000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_CURRENT_STATE_reg[1] 
       (.C(i_CLK1KHZ),
        .CE(1'b1),
        .CLR(i_RST),
        .D(\FSM_onehot_r_CURRENT_STATE[1]_i_1_n_0 ),
        .Q(r_COUNTER));
  (* FSM_ENCODED_STATES = "s_COUNTDOWN:000010,s_SW_RUNNING:000100,s_SW_STOPPED:001000,s_GET_COUNTER:000001,s_HOLD:010000,s_COLLECTION_COMPLETE:100000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_CURRENT_STATE_reg[2] 
       (.C(i_CLK1KHZ),
        .CE(1'b1),
        .CLR(i_RST),
        .D(\FSM_onehot_r_CURRENT_STATE[2]_i_1_n_0 ),
        .Q(r_SWEN));
  (* FSM_ENCODED_STATES = "s_COUNTDOWN:000010,s_SW_RUNNING:000100,s_SW_STOPPED:001000,s_GET_COUNTER:000001,s_HOLD:010000,s_COLLECTION_COMPLETE:100000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_CURRENT_STATE_reg[3] 
       (.C(i_CLK1KHZ),
        .CE(1'b1),
        .CLR(i_RST),
        .D(\FSM_onehot_r_CURRENT_STATE[3]_i_1_n_0 ),
        .Q(r_TRIAL_COUNT));
  (* FSM_ENCODED_STATES = "s_COUNTDOWN:000010,s_SW_RUNNING:000100,s_SW_STOPPED:001000,s_GET_COUNTER:000001,s_HOLD:010000,s_COLLECTION_COMPLETE:100000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_CURRENT_STATE_reg[4] 
       (.C(i_CLK1KHZ),
        .CE(1'b1),
        .CLR(i_RST),
        .D(\FSM_onehot_r_CURRENT_STATE[4]_i_1_n_0 ),
        .Q(r_HOLD_COUNT));
  (* FSM_ENCODED_STATES = "s_COUNTDOWN:000010,s_SW_RUNNING:000100,s_SW_STOPPED:001000,s_GET_COUNTER:000001,s_HOLD:010000,s_COLLECTION_COMPLETE:100000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_CURRENT_STATE_reg[5] 
       (.C(i_CLK1KHZ),
        .CE(1'b1),
        .CLR(i_RST),
        .D(\FSM_onehot_r_CURRENT_STATE[5]_i_1_n_0 ),
        .Q(r_DONE));
  FDCE #(
    .INIT(1'b0)) 
    r_ACC_EN_reg
       (.C(i_CLK1KHZ),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_TRIAL_COUNT),
        .Q(o_ACC_EN));
  FDRE #(
    .INIT(1'b0)) 
    r_CEN_reg
       (.C(i_CLK1KHZ),
        .CE(1'b1),
        .D(r_Ready),
        .Q(o_CEN),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_COUNTER[0]_i_2 
       (.I0(r_COUNTER_reg[0]),
        .O(\r_COUNTER[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_COUNTER_reg[0] 
       (.C(i_CLK1KHZ),
        .CE(r_COUNTER),
        .D(\r_COUNTER_reg[0]_i_1_n_7 ),
        .Q(r_COUNTER_reg[0]),
        .R(1'b0));
  CARRY4 \r_COUNTER_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\r_COUNTER_reg[0]_i_1_n_0 ,\r_COUNTER_reg[0]_i_1_n_1 ,\r_COUNTER_reg[0]_i_1_n_2 ,\r_COUNTER_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_COUNTER_reg[0]_i_1_n_4 ,\r_COUNTER_reg[0]_i_1_n_5 ,\r_COUNTER_reg[0]_i_1_n_6 ,\r_COUNTER_reg[0]_i_1_n_7 }),
        .S({r_COUNTER_reg[3:1],\r_COUNTER[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_COUNTER_reg[10] 
       (.C(i_CLK1KHZ),
        .CE(r_COUNTER),
        .D(\r_COUNTER_reg[8]_i_1_n_5 ),
        .Q(r_COUNTER_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_COUNTER_reg[11] 
       (.C(i_CLK1KHZ),
        .CE(r_COUNTER),
        .D(\r_COUNTER_reg[8]_i_1_n_4 ),
        .Q(r_COUNTER_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_COUNTER_reg[12] 
       (.C(i_CLK1KHZ),
        .CE(r_COUNTER),
        .D(\r_COUNTER_reg[12]_i_1_n_7 ),
        .Q(r_COUNTER_reg[12]),
        .R(1'b0));
  CARRY4 \r_COUNTER_reg[12]_i_1 
       (.CI(\r_COUNTER_reg[8]_i_1_n_0 ),
        .CO(\NLW_r_COUNTER_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_COUNTER_reg[12]_i_1_O_UNCONNECTED [3:1],\r_COUNTER_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,r_COUNTER_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \r_COUNTER_reg[1] 
       (.C(i_CLK1KHZ),
        .CE(r_COUNTER),
        .D(\r_COUNTER_reg[0]_i_1_n_6 ),
        .Q(r_COUNTER_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_COUNTER_reg[2] 
       (.C(i_CLK1KHZ),
        .CE(r_COUNTER),
        .D(\r_COUNTER_reg[0]_i_1_n_5 ),
        .Q(r_COUNTER_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_COUNTER_reg[3] 
       (.C(i_CLK1KHZ),
        .CE(r_COUNTER),
        .D(\r_COUNTER_reg[0]_i_1_n_4 ),
        .Q(r_COUNTER_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_COUNTER_reg[4] 
       (.C(i_CLK1KHZ),
        .CE(r_COUNTER),
        .D(\r_COUNTER_reg[4]_i_1_n_7 ),
        .Q(r_COUNTER_reg[4]),
        .R(1'b0));
  CARRY4 \r_COUNTER_reg[4]_i_1 
       (.CI(\r_COUNTER_reg[0]_i_1_n_0 ),
        .CO({\r_COUNTER_reg[4]_i_1_n_0 ,\r_COUNTER_reg[4]_i_1_n_1 ,\r_COUNTER_reg[4]_i_1_n_2 ,\r_COUNTER_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_COUNTER_reg[4]_i_1_n_4 ,\r_COUNTER_reg[4]_i_1_n_5 ,\r_COUNTER_reg[4]_i_1_n_6 ,\r_COUNTER_reg[4]_i_1_n_7 }),
        .S(r_COUNTER_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \r_COUNTER_reg[5] 
       (.C(i_CLK1KHZ),
        .CE(r_COUNTER),
        .D(\r_COUNTER_reg[4]_i_1_n_6 ),
        .Q(r_COUNTER_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_COUNTER_reg[6] 
       (.C(i_CLK1KHZ),
        .CE(r_COUNTER),
        .D(\r_COUNTER_reg[4]_i_1_n_5 ),
        .Q(r_COUNTER_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_COUNTER_reg[7] 
       (.C(i_CLK1KHZ),
        .CE(r_COUNTER),
        .D(\r_COUNTER_reg[4]_i_1_n_4 ),
        .Q(r_COUNTER_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_COUNTER_reg[8] 
       (.C(i_CLK1KHZ),
        .CE(r_COUNTER),
        .D(\r_COUNTER_reg[8]_i_1_n_7 ),
        .Q(r_COUNTER_reg[8]),
        .R(1'b0));
  CARRY4 \r_COUNTER_reg[8]_i_1 
       (.CI(\r_COUNTER_reg[4]_i_1_n_0 ),
        .CO({\r_COUNTER_reg[8]_i_1_n_0 ,\r_COUNTER_reg[8]_i_1_n_1 ,\r_COUNTER_reg[8]_i_1_n_2 ,\r_COUNTER_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_COUNTER_reg[8]_i_1_n_4 ,\r_COUNTER_reg[8]_i_1_n_5 ,\r_COUNTER_reg[8]_i_1_n_6 ,\r_COUNTER_reg[8]_i_1_n_7 }),
        .S(r_COUNTER_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \r_COUNTER_reg[9] 
       (.C(i_CLK1KHZ),
        .CE(r_COUNTER),
        .D(\r_COUNTER_reg[8]_i_1_n_6 ),
        .Q(r_COUNTER_reg[9]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    r_DONE_reg
       (.C(i_CLK1KHZ),
        .CE(1'b1),
        .D(1'b0),
        .Q(o_DONE),
        .S(r_DONE));
  LUT1 #(
    .INIT(2'h1)) 
    \r_HOLD_COUNT[0]_i_1 
       (.I0(r_HOLD_COUNT_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_HOLD_COUNT[1]_i_1 
       (.I0(r_HOLD_COUNT_reg__0[0]),
        .I1(r_HOLD_COUNT_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_HOLD_COUNT[2]_i_1 
       (.I0(r_HOLD_COUNT_reg__0[0]),
        .I1(r_HOLD_COUNT_reg__0[1]),
        .I2(r_HOLD_COUNT_reg__0[2]),
        .O(\r_HOLD_COUNT[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_HOLD_COUNT[3]_i_1 
       (.I0(r_HOLD_COUNT_reg__0[1]),
        .I1(r_HOLD_COUNT_reg__0[0]),
        .I2(r_HOLD_COUNT_reg__0[2]),
        .I3(r_HOLD_COUNT_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_HOLD_COUNT[4]_i_1 
       (.I0(r_HOLD_COUNT_reg__0[2]),
        .I1(r_HOLD_COUNT_reg__0[0]),
        .I2(r_HOLD_COUNT_reg__0[1]),
        .I3(r_HOLD_COUNT_reg__0[3]),
        .I4(r_HOLD_COUNT_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_HOLD_COUNT[5]_i_1 
       (.I0(r_HOLD_COUNT_reg__0[3]),
        .I1(r_HOLD_COUNT_reg__0[1]),
        .I2(r_HOLD_COUNT_reg__0[0]),
        .I3(r_HOLD_COUNT_reg__0[2]),
        .I4(r_HOLD_COUNT_reg__0[4]),
        .I5(r_HOLD_COUNT_reg__0[5]),
        .O(p_0_in__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \r_HOLD_COUNT_reg[0] 
       (.C(i_CLK1KHZ),
        .CE(r_HOLD_COUNT),
        .D(p_0_in__0[0]),
        .Q(r_HOLD_COUNT_reg__0[0]),
        .R(i_RST));
  FDRE #(
    .INIT(1'b0)) 
    \r_HOLD_COUNT_reg[1] 
       (.C(i_CLK1KHZ),
        .CE(r_HOLD_COUNT),
        .D(p_0_in__0[1]),
        .Q(r_HOLD_COUNT_reg__0[1]),
        .R(i_RST));
  FDRE #(
    .INIT(1'b0)) 
    \r_HOLD_COUNT_reg[2] 
       (.C(i_CLK1KHZ),
        .CE(r_HOLD_COUNT),
        .D(\r_HOLD_COUNT[2]_i_1_n_0 ),
        .Q(r_HOLD_COUNT_reg__0[2]),
        .R(i_RST));
  FDRE #(
    .INIT(1'b0)) 
    \r_HOLD_COUNT_reg[3] 
       (.C(i_CLK1KHZ),
        .CE(r_HOLD_COUNT),
        .D(p_0_in__0[3]),
        .Q(r_HOLD_COUNT_reg__0[3]),
        .R(i_RST));
  FDRE #(
    .INIT(1'b0)) 
    \r_HOLD_COUNT_reg[4] 
       (.C(i_CLK1KHZ),
        .CE(r_HOLD_COUNT),
        .D(p_0_in__0[4]),
        .Q(r_HOLD_COUNT_reg__0[4]),
        .R(i_RST));
  FDRE #(
    .INIT(1'b0)) 
    \r_HOLD_COUNT_reg[5] 
       (.C(i_CLK1KHZ),
        .CE(r_HOLD_COUNT),
        .D(p_0_in__0[5]),
        .Q(r_HOLD_COUNT_reg__0[5]),
        .R(i_RST));
  CARRY4 r_NEXT_STATE1_carry
       (.CI(1'b0),
        .CO({r_NEXT_STATE1_carry_n_0,r_NEXT_STATE1_carry_n_1,r_NEXT_STATE1_carry_n_2,r_NEXT_STATE1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_NEXT_STATE1_carry_O_UNCONNECTED[3:0]),
        .S({r_NEXT_STATE1_carry_i_1_n_0,r_NEXT_STATE1_carry_i_2_n_0,r_NEXT_STATE1_carry_i_3_n_0,r_NEXT_STATE1_carry_i_4_n_0}));
  CARRY4 r_NEXT_STATE1_carry__0
       (.CI(r_NEXT_STATE1_carry_n_0),
        .CO({NLW_r_NEXT_STATE1_carry__0_CO_UNCONNECTED[3:1],r_NEXT_STATE1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_NEXT_STATE1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,r_NEXT_STATE1_carry_i_1__0_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_NEXT_STATE1_carry_i_1
       (.I0(r_COUNTER_reg[9]),
        .I1(i_CVAL[9]),
        .I2(i_CVAL[11]),
        .I3(r_COUNTER_reg[11]),
        .I4(i_CVAL[10]),
        .I5(r_COUNTER_reg[10]),
        .O(r_NEXT_STATE1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_NEXT_STATE1_carry_i_1__0
       (.I0(i_CVAL[12]),
        .I1(r_COUNTER_reg[12]),
        .O(r_NEXT_STATE1_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_NEXT_STATE1_carry_i_2
       (.I0(r_COUNTER_reg[6]),
        .I1(i_CVAL[6]),
        .I2(i_CVAL[8]),
        .I3(r_COUNTER_reg[8]),
        .I4(i_CVAL[7]),
        .I5(r_COUNTER_reg[7]),
        .O(r_NEXT_STATE1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_NEXT_STATE1_carry_i_3
       (.I0(r_COUNTER_reg[3]),
        .I1(i_CVAL[3]),
        .I2(i_CVAL[5]),
        .I3(r_COUNTER_reg[5]),
        .I4(i_CVAL[4]),
        .I5(r_COUNTER_reg[4]),
        .O(r_NEXT_STATE1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_NEXT_STATE1_carry_i_4
       (.I0(r_COUNTER_reg[0]),
        .I1(i_CVAL[0]),
        .I2(i_CVAL[2]),
        .I3(r_COUNTER_reg[2]),
        .I4(i_CVAL[1]),
        .I5(r_COUNTER_reg[1]),
        .O(r_NEXT_STATE1_carry_i_4_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \r_Ready_reg[0] 
       (.C(i_CLK1KHZ),
        .CE(1'b1),
        .D(r_Ready),
        .Q(o_Ready[0]),
        .S(r_SWEN));
  FDSE #(
    .INIT(1'b0)) 
    \r_Ready_reg[1] 
       (.C(i_CLK1KHZ),
        .CE(1'b1),
        .D(1'b0),
        .Q(o_Ready[1]),
        .S(r_SWEN));
  FDSE #(
    .INIT(1'b0)) 
    r_SRST_reg
       (.C(i_CLK1KHZ),
        .CE(1'b1),
        .D(1'b0),
        .Q(o_SRST),
        .S(r_COUNTER));
  LUT1 #(
    .INIT(2'h1)) 
    \r_TRIAL_COUNT[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_TRIAL_COUNT[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_TRIAL_COUNT[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TRIAL_COUNT_reg[0] 
       (.C(i_CLK1KHZ),
        .CE(r_TRIAL_COUNT),
        .CLR(i_RST),
        .D(p_0_in[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TRIAL_COUNT_reg[1] 
       (.C(i_CLK1KHZ),
        .CE(r_TRIAL_COUNT),
        .CLR(i_RST),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TRIAL_COUNT_reg[2] 
       (.C(i_CLK1KHZ),
        .CE(r_TRIAL_COUNT),
        .CLR(i_RST),
        .D(p_0_in[2]),
        .Q(Q[2]));
endmodule

(* CHECK_LICENSE_TYPE = "Reaction_Time_Averager_RTM_FSM_0_0,RTM_FSM,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "RTM_FSM,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_CLK1KHZ,
    i_RST,
    i_CVAL,
    i_Start,
    i_Terminate,
    i_React,
    o_Ready,
    o_SWEN,
    o_ACC_EN,
    o_DONE,
    o_T_NUM,
    o_SRST,
    o_TRIAL_NUM,
    o_CEN);
  input i_CLK1KHZ;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_RST, POLARITY ACTIVE_LOW" *) input i_RST;
  input [12:0]i_CVAL;
  input i_Start;
  input i_Terminate;
  input i_React;
  output [1:0]o_Ready;
  output o_SWEN;
  output o_ACC_EN;
  output o_DONE;
  output [2:0]o_T_NUM;
  output o_SRST;
  output [2:0]o_TRIAL_NUM;
  output o_CEN;

  wire i_CLK1KHZ;
  wire [12:0]i_CVAL;
  wire i_RST;
  wire i_React;
  wire i_Start;
  wire i_Terminate;
  wire o_ACC_EN;
  wire o_CEN;
  wire o_DONE;
  wire [0:0]\^o_Ready ;
  wire o_SRST;
  wire o_SWEN;
  wire [2:0]o_T_NUM;

  assign o_Ready[1] = o_SWEN;
  assign o_Ready[0] = \^o_Ready [0];
  assign o_TRIAL_NUM[2:0] = o_T_NUM;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RTM_FSM inst
       (.Q(o_T_NUM),
        .i_CLK1KHZ(i_CLK1KHZ),
        .i_CVAL(i_CVAL),
        .i_RST(i_RST),
        .i_React(i_React),
        .i_Start(i_Start),
        .i_Terminate(i_Terminate),
        .o_ACC_EN(o_ACC_EN),
        .o_CEN(o_CEN),
        .o_DONE(o_DONE),
        .o_Ready({o_SWEN,\^o_Ready }),
        .o_SRST(o_SRST));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
