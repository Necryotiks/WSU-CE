// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 23 13:11:18 2018
// Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_BCD_TO_BINARY_0_0_sim_netlist.v
// Design      : Reaction_Time_Averager_BCD_TO_BINARY_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BCD_TO_BINARY
   (o_DATA,
    i_Digit1,
    i_Digit2,
    i_CLK,
    i_Digit4,
    i_Digit3);
  output [13:0]o_DATA;
  input [3:0]i_Digit1;
  input [3:0]i_Digit2;
  input i_CLK;
  input [3:0]i_Digit4;
  input [3:0]i_Digit3;

  wire [13:2]C;
  wire i_CLK;
  wire [3:0]i_Digit1;
  wire [3:0]i_Digit2;
  wire [3:0]i_Digit3;
  wire [3:0]i_Digit4;
  wire [13:0]o_DATA;
  wire [13:1]p_0_in;
  wire [13:1]r_DATA0;
  wire [10:5]r_DATA3;
  wire r_DATA3__0_carry__0_i_1_n_0;
  wire r_DATA3__0_carry__0_i_2_n_0;
  wire r_DATA3__0_carry__0_i_3_n_0;
  wire r_DATA3__0_carry__0_n_0;
  wire r_DATA3__0_carry__0_n_1;
  wire r_DATA3__0_carry__0_n_2;
  wire r_DATA3__0_carry__0_n_3;
  wire r_DATA3__0_carry__0_n_4;
  wire r_DATA3__0_carry__0_n_5;
  wire r_DATA3__0_carry__0_n_6;
  wire r_DATA3__0_carry__0_n_7;
  wire r_DATA3__0_carry__1_i_1_n_0;
  wire r_DATA3__0_carry__1_n_7;
  wire r_DATA3__0_carry_i_1_n_0;
  wire r_DATA3__0_carry_i_2_n_0;
  wire r_DATA3__0_carry_i_3_n_0;
  wire r_DATA3__0_carry_i_4_n_0;
  wire r_DATA3__0_carry_i_5_n_0;
  wire r_DATA3__0_carry_i_6_n_0;
  wire r_DATA3__0_carry_n_0;
  wire r_DATA3__0_carry_n_1;
  wire r_DATA3__0_carry_n_2;
  wire r_DATA3__0_carry_n_3;
  wire r_DATA3__0_carry_n_4;
  wire r_DATA3__0_carry_n_5;
  wire r_DATA3__0_carry_n_6;
  wire r_DATA3__0_carry_n_7;
  wire r_DATA3__18_carry__0_n_3;
  wire r_DATA3__18_carry_i_1__0_n_0;
  wire r_DATA3__18_carry_i_1_n_0;
  wire r_DATA3__18_carry_i_2__0_n_0;
  wire r_DATA3__18_carry_i_2_n_0;
  wire r_DATA3__18_carry_i_3_n_0;
  wire r_DATA3__18_carry_i_4_n_0;
  wire r_DATA3__18_carry_i_5_n_0;
  wire r_DATA3__18_carry_n_0;
  wire r_DATA3__18_carry_n_1;
  wire r_DATA3__18_carry_n_2;
  wire r_DATA3__18_carry_n_3;
  wire \r_DATA[12]_i_3_n_0 ;
  wire \r_DATA[12]_i_4_n_0 ;
  wire \r_DATA[12]_i_5_n_0 ;
  wire \r_DATA[12]_i_6_n_0 ;
  wire \r_DATA[13]_i_10_n_0 ;
  wire \r_DATA[13]_i_5_n_0 ;
  wire \r_DATA[13]_i_7_n_0 ;
  wire \r_DATA[13]_i_8_n_0 ;
  wire \r_DATA[13]_i_9_n_0 ;
  wire \r_DATA[1]_i_3_n_0 ;
  wire \r_DATA[4]_i_2_n_0 ;
  wire \r_DATA[4]_i_3_n_0 ;
  wire \r_DATA[4]_i_4_n_0 ;
  wire \r_DATA[8]_i_3_n_0 ;
  wire \r_DATA[8]_i_4_n_0 ;
  wire \r_DATA[8]_i_5_n_0 ;
  wire \r_DATA_reg[12]_i_1_n_0 ;
  wire \r_DATA_reg[12]_i_1_n_1 ;
  wire \r_DATA_reg[12]_i_1_n_2 ;
  wire \r_DATA_reg[12]_i_1_n_3 ;
  wire \r_DATA_reg[12]_i_2_n_0 ;
  wire \r_DATA_reg[12]_i_2_n_1 ;
  wire \r_DATA_reg[12]_i_2_n_2 ;
  wire \r_DATA_reg[12]_i_2_n_3 ;
  wire \r_DATA_reg[13]_i_2_n_1 ;
  wire \r_DATA_reg[13]_i_2_n_2 ;
  wire \r_DATA_reg[13]_i_2_n_3 ;
  wire \r_DATA_reg[13]_i_3_n_3 ;
  wire \r_DATA_reg[13]_i_4_n_0 ;
  wire \r_DATA_reg[13]_i_4_n_1 ;
  wire \r_DATA_reg[13]_i_4_n_2 ;
  wire \r_DATA_reg[13]_i_4_n_3 ;
  wire \r_DATA_reg[13]_i_6_n_0 ;
  wire \r_DATA_reg[13]_i_6_n_1 ;
  wire \r_DATA_reg[13]_i_6_n_2 ;
  wire \r_DATA_reg[13]_i_6_n_3 ;
  wire \r_DATA_reg[1]_i_2_n_0 ;
  wire \r_DATA_reg[1]_i_2_n_1 ;
  wire \r_DATA_reg[1]_i_2_n_2 ;
  wire \r_DATA_reg[1]_i_2_n_3 ;
  wire \r_DATA_reg[4]_i_1_n_0 ;
  wire \r_DATA_reg[4]_i_1_n_1 ;
  wire \r_DATA_reg[4]_i_1_n_2 ;
  wire \r_DATA_reg[4]_i_1_n_3 ;
  wire \r_DATA_reg[8]_i_1_n_0 ;
  wire \r_DATA_reg[8]_i_1_n_1 ;
  wire \r_DATA_reg[8]_i_1_n_2 ;
  wire \r_DATA_reg[8]_i_1_n_3 ;
  wire \r_DATA_reg[8]_i_2_n_0 ;
  wire \r_DATA_reg[8]_i_2_n_1 ;
  wire \r_DATA_reg[8]_i_2_n_2 ;
  wire \r_DATA_reg[8]_i_2_n_3 ;
  wire [3:0]NLW_r_DATA3__0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_r_DATA3__0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_r_DATA3__18_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_r_DATA3__18_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_r_DATA_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_r_DATA_reg[13]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_r_DATA_reg[13]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_r_DATA_reg[13]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_r_DATA_reg[13]_i_3_O_UNCONNECTED ;
  wire [0:0]\NLW_r_DATA_reg[1]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_r_DATA_reg[4]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_r_DATA_reg[8]_i_2_O_UNCONNECTED ;

  CARRY4 r_DATA3__0_carry
       (.CI(1'b0),
        .CO({r_DATA3__0_carry_n_0,r_DATA3__0_carry_n_1,r_DATA3__0_carry_n_2,r_DATA3__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,r_DATA3__0_carry_i_1_n_0,r_DATA3__0_carry_i_2_n_0,1'b0}),
        .O({r_DATA3__0_carry_n_4,r_DATA3__0_carry_n_5,r_DATA3__0_carry_n_6,r_DATA3__0_carry_n_7}),
        .S({r_DATA3__0_carry_i_3_n_0,r_DATA3__0_carry_i_4_n_0,r_DATA3__0_carry_i_5_n_0,r_DATA3__0_carry_i_6_n_0}));
  CARRY4 r_DATA3__0_carry__0
       (.CI(r_DATA3__0_carry_n_0),
        .CO({r_DATA3__0_carry__0_n_0,r_DATA3__0_carry__0_n_1,r_DATA3__0_carry__0_n_2,r_DATA3__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({i_Digit1[2:0],1'b0}),
        .O({r_DATA3__0_carry__0_n_4,r_DATA3__0_carry__0_n_5,r_DATA3__0_carry__0_n_6,r_DATA3__0_carry__0_n_7}),
        .S({r_DATA3__0_carry__0_i_1_n_0,r_DATA3__0_carry__0_i_2_n_0,r_DATA3__0_carry__0_i_3_n_0,1'b1}));
  LUT1 #(
    .INIT(2'h1)) 
    r_DATA3__0_carry__0_i_1
       (.I0(i_Digit1[2]),
        .O(r_DATA3__0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_DATA3__0_carry__0_i_2
       (.I0(i_Digit1[1]),
        .O(r_DATA3__0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_DATA3__0_carry__0_i_3
       (.I0(i_Digit1[0]),
        .O(r_DATA3__0_carry__0_i_3_n_0));
  CARRY4 r_DATA3__0_carry__1
       (.CI(r_DATA3__0_carry__0_n_0),
        .CO(NLW_r_DATA3__0_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_DATA3__0_carry__1_O_UNCONNECTED[3:1],r_DATA3__0_carry__1_n_7}),
        .S({1'b0,1'b0,1'b0,r_DATA3__0_carry__1_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_DATA3__0_carry__1_i_1
       (.I0(i_Digit1[3]),
        .O(r_DATA3__0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    r_DATA3__0_carry_i_1
       (.I0(i_Digit1[3]),
        .I1(i_Digit1[1]),
        .O(r_DATA3__0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    r_DATA3__0_carry_i_2
       (.I0(i_Digit1[2]),
        .I1(i_Digit1[0]),
        .O(r_DATA3__0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_DATA3__0_carry_i_3
       (.I0(i_Digit1[3]),
        .O(r_DATA3__0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    r_DATA3__0_carry_i_4
       (.I0(i_Digit1[1]),
        .I1(i_Digit1[3]),
        .I2(i_Digit1[2]),
        .O(r_DATA3__0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    r_DATA3__0_carry_i_5
       (.I0(i_Digit1[0]),
        .I1(i_Digit1[2]),
        .I2(i_Digit1[3]),
        .I3(i_Digit1[1]),
        .O(r_DATA3__0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r_DATA3__0_carry_i_6
       (.I0(i_Digit1[0]),
        .I1(i_Digit1[2]),
        .O(r_DATA3__0_carry_i_6_n_0));
  CARRY4 r_DATA3__18_carry
       (.CI(1'b0),
        .CO({r_DATA3__18_carry_n_0,r_DATA3__18_carry_n_1,r_DATA3__18_carry_n_2,r_DATA3__18_carry_n_3}),
        .CYINIT(1'b0),
        .DI({i_Digit2[1:0],r_DATA3__18_carry_i_1__0_n_0,1'b0}),
        .O(r_DATA3[8:5]),
        .S({r_DATA3__18_carry_i_2__0_n_0,r_DATA3__18_carry_i_3_n_0,r_DATA3__18_carry_i_4_n_0,r_DATA3__18_carry_i_5_n_0}));
  CARRY4 r_DATA3__18_carry__0
       (.CI(r_DATA3__18_carry_n_0),
        .CO({NLW_r_DATA3__18_carry__0_CO_UNCONNECTED[3:1],r_DATA3__18_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i_Digit2[2]}),
        .O({NLW_r_DATA3__18_carry__0_O_UNCONNECTED[3:2],r_DATA3[10:9]}),
        .S({1'b0,1'b0,r_DATA3__18_carry_i_1_n_0,r_DATA3__18_carry_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_DATA3__18_carry_i_1
       (.I0(i_Digit2[3]),
        .O(r_DATA3__18_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    r_DATA3__18_carry_i_1__0
       (.I0(i_Digit2[3]),
        .I1(i_Digit2[0]),
        .O(r_DATA3__18_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_DATA3__18_carry_i_2
       (.I0(i_Digit2[2]),
        .O(r_DATA3__18_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_DATA3__18_carry_i_2__0
       (.I0(i_Digit2[1]),
        .I1(i_Digit2[3]),
        .O(r_DATA3__18_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_DATA3__18_carry_i_3
       (.I0(i_Digit2[0]),
        .I1(i_Digit2[2]),
        .O(r_DATA3__18_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hD2)) 
    r_DATA3__18_carry_i_4
       (.I0(i_Digit2[0]),
        .I1(i_Digit2[3]),
        .I2(i_Digit2[1]),
        .O(r_DATA3__18_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r_DATA3__18_carry_i_5
       (.I0(i_Digit2[3]),
        .I1(i_Digit2[0]),
        .O(r_DATA3__18_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \r_DATA[12]_i_3 
       (.I0(r_DATA3[9]),
        .I1(C[9]),
        .O(\r_DATA[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_DATA[12]_i_4 
       (.I0(r_DATA3[8]),
        .I1(C[8]),
        .O(\r_DATA[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_DATA[12]_i_5 
       (.I0(r_DATA3[7]),
        .I1(C[7]),
        .O(\r_DATA[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_DATA[12]_i_6 
       (.I0(r_DATA3[6]),
        .I1(C[6]),
        .O(\r_DATA[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h69999666)) 
    \r_DATA[13]_i_10 
       (.I0(i_Digit3[3]),
        .I1(i_Digit3[1]),
        .I2(i_Digit3[0]),
        .I3(i_Digit3[2]),
        .I4(i_Digit1[1]),
        .O(\r_DATA[13]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_DATA[13]_i_5 
       (.I0(r_DATA3[10]),
        .I1(C[10]),
        .O(\r_DATA[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h3F7FC080)) 
    \r_DATA[13]_i_7 
       (.I0(i_Digit3[0]),
        .I1(i_Digit3[2]),
        .I2(i_Digit3[3]),
        .I3(i_Digit3[1]),
        .I4(r_DATA3__0_carry_n_5),
        .O(\r_DATA[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB5D54A2A)) 
    \r_DATA[13]_i_8 
       (.I0(i_Digit3[3]),
        .I1(i_Digit3[0]),
        .I2(i_Digit3[2]),
        .I3(i_Digit3[1]),
        .I4(r_DATA3__0_carry_n_6),
        .O(\r_DATA[13]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBD95426A)) 
    \r_DATA[13]_i_9 
       (.I0(i_Digit3[2]),
        .I1(i_Digit3[1]),
        .I2(i_Digit3[3]),
        .I3(i_Digit3[0]),
        .I4(r_DATA3__0_carry_n_7),
        .O(\r_DATA[13]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_DATA[1]_i_1 
       (.I0(i_Digit4[1]),
        .I1(p_0_in[1]),
        .O(r_DATA0[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \r_DATA[1]_i_3 
       (.I0(i_Digit3[0]),
        .I1(i_Digit3[2]),
        .I2(i_Digit1[0]),
        .O(\r_DATA[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_DATA[4]_i_2 
       (.I0(i_Digit4[3]),
        .I1(p_0_in[3]),
        .O(\r_DATA[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \r_DATA[4]_i_3 
       (.I0(i_Digit4[2]),
        .I1(C[2]),
        .I2(i_Digit2[0]),
        .O(\r_DATA[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_DATA[4]_i_4 
       (.I0(i_Digit4[1]),
        .I1(p_0_in[1]),
        .O(\r_DATA[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_DATA[8]_i_3 
       (.I0(r_DATA3[5]),
        .I1(C[5]),
        .O(\r_DATA[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_DATA[8]_i_4 
       (.I0(i_Digit2[2]),
        .I1(C[4]),
        .O(\r_DATA[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_DATA[8]_i_5 
       (.I0(i_Digit2[1]),
        .I1(C[3]),
        .O(\r_DATA[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_DATA[8]_i_6 
       (.I0(i_Digit2[0]),
        .I1(C[2]),
        .O(p_0_in[2]));
  FDRE \r_DATA_reg[0] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(i_Digit4[0]),
        .Q(o_DATA[0]),
        .R(1'b0));
  FDRE \r_DATA_reg[10] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_DATA0[10]),
        .Q(o_DATA[10]),
        .R(1'b0));
  FDRE \r_DATA_reg[11] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_DATA0[11]),
        .Q(o_DATA[11]),
        .R(1'b0));
  FDRE \r_DATA_reg[12] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_DATA0[12]),
        .Q(o_DATA[12]),
        .R(1'b0));
  CARRY4 \r_DATA_reg[12]_i_1 
       (.CI(\r_DATA_reg[8]_i_1_n_0 ),
        .CO({\r_DATA_reg[12]_i_1_n_0 ,\r_DATA_reg[12]_i_1_n_1 ,\r_DATA_reg[12]_i_1_n_2 ,\r_DATA_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_DATA0[12:9]),
        .S(p_0_in[12:9]));
  CARRY4 \r_DATA_reg[12]_i_2 
       (.CI(\r_DATA_reg[8]_i_2_n_0 ),
        .CO({\r_DATA_reg[12]_i_2_n_0 ,\r_DATA_reg[12]_i_2_n_1 ,\r_DATA_reg[12]_i_2_n_2 ,\r_DATA_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(r_DATA3[9:6]),
        .O(p_0_in[9:6]),
        .S({\r_DATA[12]_i_3_n_0 ,\r_DATA[12]_i_4_n_0 ,\r_DATA[12]_i_5_n_0 ,\r_DATA[12]_i_6_n_0 }));
  FDRE \r_DATA_reg[13] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_DATA0[13]),
        .Q(o_DATA[13]),
        .R(1'b0));
  CARRY4 \r_DATA_reg[13]_i_1 
       (.CI(\r_DATA_reg[12]_i_1_n_0 ),
        .CO(\NLW_r_DATA_reg[13]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_DATA_reg[13]_i_1_O_UNCONNECTED [3:1],r_DATA0[13]}),
        .S({1'b0,1'b0,1'b0,p_0_in[13]}));
  CARRY4 \r_DATA_reg[13]_i_2 
       (.CI(\r_DATA_reg[12]_i_2_n_0 ),
        .CO({\NLW_r_DATA_reg[13]_i_2_CO_UNCONNECTED [3],\r_DATA_reg[13]_i_2_n_1 ,\r_DATA_reg[13]_i_2_n_2 ,\r_DATA_reg[13]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r_DATA3[10]}),
        .O(p_0_in[13:10]),
        .S({C[13:11],\r_DATA[13]_i_5_n_0 }));
  CARRY4 \r_DATA_reg[13]_i_3 
       (.CI(\r_DATA_reg[13]_i_4_n_0 ),
        .CO({\NLW_r_DATA_reg[13]_i_3_CO_UNCONNECTED [3:1],\r_DATA_reg[13]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_DATA_reg[13]_i_3_O_UNCONNECTED [3:2],C[13:12]}),
        .S({1'b0,1'b0,r_DATA3__0_carry__1_n_7,r_DATA3__0_carry__0_n_4}));
  CARRY4 \r_DATA_reg[13]_i_4 
       (.CI(\r_DATA_reg[13]_i_6_n_0 ),
        .CO({\r_DATA_reg[13]_i_4_n_0 ,\r_DATA_reg[13]_i_4_n_1 ,\r_DATA_reg[13]_i_4_n_2 ,\r_DATA_reg[13]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(C[11:8]),
        .S({r_DATA3__0_carry__0_n_5,r_DATA3__0_carry__0_n_6,r_DATA3__0_carry__0_n_7,r_DATA3__0_carry_n_4}));
  CARRY4 \r_DATA_reg[13]_i_6 
       (.CI(\r_DATA_reg[1]_i_2_n_0 ),
        .CO({\r_DATA_reg[13]_i_6_n_0 ,\r_DATA_reg[13]_i_6_n_1 ,\r_DATA_reg[13]_i_6_n_2 ,\r_DATA_reg[13]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({r_DATA3__0_carry_n_5,r_DATA3__0_carry_n_6,r_DATA3__0_carry_n_7,i_Digit1[1]}),
        .O(C[7:4]),
        .S({\r_DATA[13]_i_7_n_0 ,\r_DATA[13]_i_8_n_0 ,\r_DATA[13]_i_9_n_0 ,\r_DATA[13]_i_10_n_0 }));
  FDRE \r_DATA_reg[1] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_DATA0[1]),
        .Q(o_DATA[1]),
        .R(1'b0));
  CARRY4 \r_DATA_reg[1]_i_2 
       (.CI(1'b0),
        .CO({\r_DATA_reg[1]_i_2_n_0 ,\r_DATA_reg[1]_i_2_n_1 ,\r_DATA_reg[1]_i_2_n_2 ,\r_DATA_reg[1]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({i_Digit1[0],i_Digit3[1:0],1'b0}),
        .O({C[3:2],p_0_in[1],\NLW_r_DATA_reg[1]_i_2_O_UNCONNECTED [0]}),
        .S({\r_DATA[1]_i_3_n_0 ,i_Digit3[1:0],1'b0}));
  FDRE \r_DATA_reg[2] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_DATA0[2]),
        .Q(o_DATA[2]),
        .R(1'b0));
  FDRE \r_DATA_reg[3] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_DATA0[3]),
        .Q(o_DATA[3]),
        .R(1'b0));
  FDRE \r_DATA_reg[4] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_DATA0[4]),
        .Q(o_DATA[4]),
        .R(1'b0));
  CARRY4 \r_DATA_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\r_DATA_reg[4]_i_1_n_0 ,\r_DATA_reg[4]_i_1_n_1 ,\r_DATA_reg[4]_i_1_n_2 ,\r_DATA_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i_Digit4[3:1]}),
        .O({r_DATA0[4:2],\NLW_r_DATA_reg[4]_i_1_O_UNCONNECTED [0]}),
        .S({p_0_in[4],\r_DATA[4]_i_2_n_0 ,\r_DATA[4]_i_3_n_0 ,\r_DATA[4]_i_4_n_0 }));
  FDRE \r_DATA_reg[5] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_DATA0[5]),
        .Q(o_DATA[5]),
        .R(1'b0));
  FDRE \r_DATA_reg[6] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_DATA0[6]),
        .Q(o_DATA[6]),
        .R(1'b0));
  FDRE \r_DATA_reg[7] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_DATA0[7]),
        .Q(o_DATA[7]),
        .R(1'b0));
  FDRE \r_DATA_reg[8] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_DATA0[8]),
        .Q(o_DATA[8]),
        .R(1'b0));
  CARRY4 \r_DATA_reg[8]_i_1 
       (.CI(\r_DATA_reg[4]_i_1_n_0 ),
        .CO({\r_DATA_reg[8]_i_1_n_0 ,\r_DATA_reg[8]_i_1_n_1 ,\r_DATA_reg[8]_i_1_n_2 ,\r_DATA_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_DATA0[8:5]),
        .S(p_0_in[8:5]));
  CARRY4 \r_DATA_reg[8]_i_2 
       (.CI(1'b0),
        .CO({\r_DATA_reg[8]_i_2_n_0 ,\r_DATA_reg[8]_i_2_n_1 ,\r_DATA_reg[8]_i_2_n_2 ,\r_DATA_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({r_DATA3[5],i_Digit2[2:0]}),
        .O({p_0_in[5:3],\NLW_r_DATA_reg[8]_i_2_O_UNCONNECTED [0]}),
        .S({\r_DATA[8]_i_3_n_0 ,\r_DATA[8]_i_4_n_0 ,\r_DATA[8]_i_5_n_0 ,p_0_in[2]}));
  FDRE \r_DATA_reg[9] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_DATA0[9]),
        .Q(o_DATA[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "Reaction_Time_Averager_BCD_TO_BINARY_0_0,BCD_TO_BINARY,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "BCD_TO_BINARY,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_CLK,
    i_Digit1,
    i_Digit2,
    i_Digit3,
    i_Digit4,
    o_DATA);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_i_CLK" *) input i_CLK;
  input [3:0]i_Digit1;
  input [3:0]i_Digit2;
  input [3:0]i_Digit3;
  input [3:0]i_Digit4;
  output [13:0]o_DATA;

  wire i_CLK;
  wire [3:0]i_Digit1;
  wire [3:0]i_Digit2;
  wire [3:0]i_Digit3;
  wire [3:0]i_Digit4;
  wire [13:0]o_DATA;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BCD_TO_BINARY inst
       (.i_CLK(i_CLK),
        .i_Digit1(i_Digit1),
        .i_Digit2(i_Digit2),
        .i_Digit3(i_Digit3),
        .i_Digit4(i_Digit4),
        .o_DATA(o_DATA));
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
