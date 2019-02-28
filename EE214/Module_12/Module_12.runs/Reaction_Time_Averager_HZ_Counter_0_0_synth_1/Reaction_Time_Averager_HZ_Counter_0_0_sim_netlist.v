// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 23 13:11:18 2018
// Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_HZ_Counter_0_0_sim_netlist.v
// Design      : Reaction_Time_Averager_HZ_Counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HZ_Counter
   (o_Out,
    i_CLK,
    i_RST);
  output o_Out;
  input i_CLK;
  input i_RST;

  wire [31:1]data0;
  wire i_CLK;
  wire i_RST;
  wire o_Out;
  wire o_Out_i_1_n_0;
  wire o_Out_i_2_n_0;
  wire o_Out_i_3_n_0;
  wire o_Out_i_4_n_0;
  wire o_Out_i_5_n_0;
  wire o_Out_i_6_n_0;
  wire o_Out_i_7_n_0;
  wire o_Out_i_8_n_0;
  wire o_Out_i_9_n_0;
  wire [31:0]r_Count;
  wire [31:0]r_Count_0;
  wire \r_Count_reg[12]_i_2_n_0 ;
  wire \r_Count_reg[12]_i_2_n_1 ;
  wire \r_Count_reg[12]_i_2_n_2 ;
  wire \r_Count_reg[12]_i_2_n_3 ;
  wire \r_Count_reg[16]_i_2_n_0 ;
  wire \r_Count_reg[16]_i_2_n_1 ;
  wire \r_Count_reg[16]_i_2_n_2 ;
  wire \r_Count_reg[16]_i_2_n_3 ;
  wire \r_Count_reg[20]_i_2_n_0 ;
  wire \r_Count_reg[20]_i_2_n_1 ;
  wire \r_Count_reg[20]_i_2_n_2 ;
  wire \r_Count_reg[20]_i_2_n_3 ;
  wire \r_Count_reg[24]_i_2_n_0 ;
  wire \r_Count_reg[24]_i_2_n_1 ;
  wire \r_Count_reg[24]_i_2_n_2 ;
  wire \r_Count_reg[24]_i_2_n_3 ;
  wire \r_Count_reg[28]_i_2_n_0 ;
  wire \r_Count_reg[28]_i_2_n_1 ;
  wire \r_Count_reg[28]_i_2_n_2 ;
  wire \r_Count_reg[28]_i_2_n_3 ;
  wire \r_Count_reg[31]_i_2_n_2 ;
  wire \r_Count_reg[31]_i_2_n_3 ;
  wire \r_Count_reg[4]_i_2_n_0 ;
  wire \r_Count_reg[4]_i_2_n_1 ;
  wire \r_Count_reg[4]_i_2_n_2 ;
  wire \r_Count_reg[4]_i_2_n_3 ;
  wire \r_Count_reg[8]_i_2_n_0 ;
  wire \r_Count_reg[8]_i_2_n_1 ;
  wire \r_Count_reg[8]_i_2_n_2 ;
  wire \r_Count_reg[8]_i_2_n_3 ;
  wire [3:2]\NLW_r_Count_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_Count_reg[31]_i_2_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFE0001)) 
    o_Out_i_1
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(o_Out),
        .O(o_Out_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_Out_i_2
       (.I0(r_Count[18]),
        .I1(r_Count[19]),
        .I2(r_Count[16]),
        .I3(r_Count[17]),
        .I4(o_Out_i_6_n_0),
        .O(o_Out_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_Out_i_3
       (.I0(r_Count[26]),
        .I1(r_Count[27]),
        .I2(r_Count[24]),
        .I3(r_Count[25]),
        .I4(o_Out_i_7_n_0),
        .O(o_Out_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    o_Out_i_4
       (.I0(r_Count[2]),
        .I1(r_Count[3]),
        .I2(r_Count[0]),
        .I3(r_Count[1]),
        .I4(o_Out_i_8_n_0),
        .O(o_Out_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    o_Out_i_5
       (.I0(r_Count[10]),
        .I1(r_Count[11]),
        .I2(r_Count[8]),
        .I3(r_Count[9]),
        .I4(o_Out_i_9_n_0),
        .O(o_Out_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_Out_i_6
       (.I0(r_Count[21]),
        .I1(r_Count[20]),
        .I2(r_Count[23]),
        .I3(r_Count[22]),
        .O(o_Out_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_Out_i_7
       (.I0(r_Count[29]),
        .I1(r_Count[28]),
        .I2(r_Count[31]),
        .I3(r_Count[30]),
        .O(o_Out_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    o_Out_i_8
       (.I0(r_Count[5]),
        .I1(r_Count[4]),
        .I2(r_Count[6]),
        .I3(r_Count[7]),
        .O(o_Out_i_8_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    o_Out_i_9
       (.I0(r_Count[13]),
        .I1(r_Count[12]),
        .I2(r_Count[15]),
        .I3(r_Count[14]),
        .O(o_Out_i_9_n_0));
  FDCE o_Out_reg
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(o_Out_i_1_n_0),
        .Q(o_Out));
  LUT1 #(
    .INIT(2'h1)) 
    \r_Count[0]_i_1 
       (.I0(r_Count[0]),
        .O(r_Count_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[10]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[10]),
        .O(r_Count_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[11]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[11]),
        .O(r_Count_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[12]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[12]),
        .O(r_Count_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[13]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[13]),
        .O(r_Count_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[14]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[14]),
        .O(r_Count_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[15]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[15]),
        .O(r_Count_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[16]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[16]),
        .O(r_Count_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[17]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[17]),
        .O(r_Count_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[18]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[18]),
        .O(r_Count_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[19]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[19]),
        .O(r_Count_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[1]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[1]),
        .O(r_Count_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[20]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[20]),
        .O(r_Count_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[21]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[21]),
        .O(r_Count_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[22]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[22]),
        .O(r_Count_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[23]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[23]),
        .O(r_Count_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[24]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[24]),
        .O(r_Count_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[25]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[25]),
        .O(r_Count_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[26]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[26]),
        .O(r_Count_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[27]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[27]),
        .O(r_Count_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[28]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[28]),
        .O(r_Count_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[29]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[29]),
        .O(r_Count_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[2]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[2]),
        .O(r_Count_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[30]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[30]),
        .O(r_Count_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[31]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[31]),
        .O(r_Count_0[31]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[3]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[3]),
        .O(r_Count_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[4]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[4]),
        .O(r_Count_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[5]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[5]),
        .O(r_Count_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[6]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[6]),
        .O(r_Count_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[7]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[7]),
        .O(r_Count_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[8]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[8]),
        .O(r_Count_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \r_Count[9]_i_1 
       (.I0(o_Out_i_2_n_0),
        .I1(o_Out_i_3_n_0),
        .I2(o_Out_i_4_n_0),
        .I3(o_Out_i_5_n_0),
        .I4(data0[9]),
        .O(r_Count_0[9]));
  FDCE \r_Count_reg[0] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[0]),
        .Q(r_Count[0]));
  FDCE \r_Count_reg[10] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[10]),
        .Q(r_Count[10]));
  FDCE \r_Count_reg[11] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[11]),
        .Q(r_Count[11]));
  FDCE \r_Count_reg[12] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[12]),
        .Q(r_Count[12]));
  CARRY4 \r_Count_reg[12]_i_2 
       (.CI(\r_Count_reg[8]_i_2_n_0 ),
        .CO({\r_Count_reg[12]_i_2_n_0 ,\r_Count_reg[12]_i_2_n_1 ,\r_Count_reg[12]_i_2_n_2 ,\r_Count_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(r_Count[12:9]));
  FDCE \r_Count_reg[13] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[13]),
        .Q(r_Count[13]));
  FDCE \r_Count_reg[14] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[14]),
        .Q(r_Count[14]));
  FDCE \r_Count_reg[15] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[15]),
        .Q(r_Count[15]));
  FDCE \r_Count_reg[16] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[16]),
        .Q(r_Count[16]));
  CARRY4 \r_Count_reg[16]_i_2 
       (.CI(\r_Count_reg[12]_i_2_n_0 ),
        .CO({\r_Count_reg[16]_i_2_n_0 ,\r_Count_reg[16]_i_2_n_1 ,\r_Count_reg[16]_i_2_n_2 ,\r_Count_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(r_Count[16:13]));
  FDCE \r_Count_reg[17] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[17]),
        .Q(r_Count[17]));
  FDCE \r_Count_reg[18] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[18]),
        .Q(r_Count[18]));
  FDCE \r_Count_reg[19] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[19]),
        .Q(r_Count[19]));
  FDCE \r_Count_reg[1] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[1]),
        .Q(r_Count[1]));
  FDCE \r_Count_reg[20] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[20]),
        .Q(r_Count[20]));
  CARRY4 \r_Count_reg[20]_i_2 
       (.CI(\r_Count_reg[16]_i_2_n_0 ),
        .CO({\r_Count_reg[20]_i_2_n_0 ,\r_Count_reg[20]_i_2_n_1 ,\r_Count_reg[20]_i_2_n_2 ,\r_Count_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(r_Count[20:17]));
  FDCE \r_Count_reg[21] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[21]),
        .Q(r_Count[21]));
  FDCE \r_Count_reg[22] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[22]),
        .Q(r_Count[22]));
  FDCE \r_Count_reg[23] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[23]),
        .Q(r_Count[23]));
  FDCE \r_Count_reg[24] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[24]),
        .Q(r_Count[24]));
  CARRY4 \r_Count_reg[24]_i_2 
       (.CI(\r_Count_reg[20]_i_2_n_0 ),
        .CO({\r_Count_reg[24]_i_2_n_0 ,\r_Count_reg[24]_i_2_n_1 ,\r_Count_reg[24]_i_2_n_2 ,\r_Count_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(r_Count[24:21]));
  FDCE \r_Count_reg[25] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[25]),
        .Q(r_Count[25]));
  FDCE \r_Count_reg[26] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[26]),
        .Q(r_Count[26]));
  FDCE \r_Count_reg[27] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[27]),
        .Q(r_Count[27]));
  FDCE \r_Count_reg[28] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[28]),
        .Q(r_Count[28]));
  CARRY4 \r_Count_reg[28]_i_2 
       (.CI(\r_Count_reg[24]_i_2_n_0 ),
        .CO({\r_Count_reg[28]_i_2_n_0 ,\r_Count_reg[28]_i_2_n_1 ,\r_Count_reg[28]_i_2_n_2 ,\r_Count_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(r_Count[28:25]));
  FDCE \r_Count_reg[29] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[29]),
        .Q(r_Count[29]));
  FDCE \r_Count_reg[2] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[2]),
        .Q(r_Count[2]));
  FDCE \r_Count_reg[30] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[30]),
        .Q(r_Count[30]));
  FDCE \r_Count_reg[31] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[31]),
        .Q(r_Count[31]));
  CARRY4 \r_Count_reg[31]_i_2 
       (.CI(\r_Count_reg[28]_i_2_n_0 ),
        .CO({\NLW_r_Count_reg[31]_i_2_CO_UNCONNECTED [3:2],\r_Count_reg[31]_i_2_n_2 ,\r_Count_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_Count_reg[31]_i_2_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,r_Count[31:29]}));
  FDCE \r_Count_reg[3] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[3]),
        .Q(r_Count[3]));
  FDCE \r_Count_reg[4] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[4]),
        .Q(r_Count[4]));
  CARRY4 \r_Count_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\r_Count_reg[4]_i_2_n_0 ,\r_Count_reg[4]_i_2_n_1 ,\r_Count_reg[4]_i_2_n_2 ,\r_Count_reg[4]_i_2_n_3 }),
        .CYINIT(r_Count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(r_Count[4:1]));
  FDCE \r_Count_reg[5] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[5]),
        .Q(r_Count[5]));
  FDCE \r_Count_reg[6] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[6]),
        .Q(r_Count[6]));
  FDCE \r_Count_reg[7] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[7]),
        .Q(r_Count[7]));
  FDCE \r_Count_reg[8] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[8]),
        .Q(r_Count[8]));
  CARRY4 \r_Count_reg[8]_i_2 
       (.CI(\r_Count_reg[4]_i_2_n_0 ),
        .CO({\r_Count_reg[8]_i_2_n_0 ,\r_Count_reg[8]_i_2_n_1 ,\r_Count_reg[8]_i_2_n_2 ,\r_Count_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(r_Count[8:5]));
  FDCE \r_Count_reg[9] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RST),
        .D(r_Count_0[9]),
        .Q(r_Count[9]));
endmodule

(* CHECK_LICENSE_TYPE = "Reaction_Time_Averager_HZ_Counter_0_0,HZ_Counter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "HZ_Counter,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_CLK,
    i_RST,
    o_Out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_CLK, ASSOCIATED_RESET i_RST, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_i_CLK" *) input i_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_RST, POLARITY ACTIVE_LOW" *) input i_RST;
  output o_Out;

  wire i_CLK;
  wire i_RST;
  wire o_Out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HZ_Counter inst
       (.i_CLK(i_CLK),
        .i_RST(i_RST),
        .o_Out(o_Out));
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
