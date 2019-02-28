// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 23 13:13:33 2018
// Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_BINARY_TO_BCD_0_0_sim_netlist.v
// Design      : Reaction_Time_Averager_BINARY_TO_BCD_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BINARY_TO_BCD
   (o_BCD,
    i_Clock,
    i_Start,
    i_Binary);
  output [15:0]o_BCD;
  input i_Clock;
  input i_Start;
  input [13:0]i_Binary;

  wire [13:0]i_Binary;
  wire i_Clock;
  wire i_Start;
  wire [15:0]o_BCD;
  wire [2:0]p_0_in__0;
  wire [15:3]r_BCD;
  wire [15:0]r_BCD0_in;
  wire \r_BCD[11]_i_3_n_0 ;
  wire \r_BCD[11]_i_4_n_0 ;
  wire \r_BCD[15]_i_3_n_0 ;
  wire \r_BCD[15]_i_4_n_0 ;
  wire \r_BCD[3]_i_3_n_0 ;
  wire \r_BCD[3]_i_4_n_0 ;
  wire \r_BCD[7]_i_3_n_0 ;
  wire \r_BCD[7]_i_4_n_0 ;
  wire [13:0]r_Binary;
  wire r_Binary_0;
  wire \r_Binary_reg_n_0_[0] ;
  wire \r_Binary_reg_n_0_[10] ;
  wire \r_Binary_reg_n_0_[11] ;
  wire \r_Binary_reg_n_0_[12] ;
  wire \r_Binary_reg_n_0_[13] ;
  wire \r_Binary_reg_n_0_[1] ;
  wire \r_Binary_reg_n_0_[2] ;
  wire \r_Binary_reg_n_0_[3] ;
  wire \r_Binary_reg_n_0_[4] ;
  wire \r_Binary_reg_n_0_[5] ;
  wire \r_Binary_reg_n_0_[6] ;
  wire \r_Binary_reg_n_0_[7] ;
  wire \r_Binary_reg_n_0_[8] ;
  wire \r_Binary_reg_n_0_[9] ;
  wire \r_CURRENT_STATE[1]_i_2_n_0 ;
  wire \r_CURRENT_STATE[1]_i_3_n_0 ;
  wire \r_CURRENT_STATE[2]_i_2_n_0 ;
  wire \r_CURRENT_STATE[2]_i_3_n_0 ;
  wire [2:0]r_CURRENT_STATE__0;
  wire \r_Digit_Index[0]__0_i_1_n_0 ;
  wire \r_Digit_Index[1]_i_1_n_0 ;
  wire \r_Digit_Index_reg[0]__0_n_0 ;
  wire \r_Digit_Index_reg_n_0_[1] ;
  wire [7:0]r_Loop_Count;
  wire \r_Loop_Count[7]_i_1_n_0 ;
  wire \r_Loop_Count[7]_i_3_n_0 ;
  wire [7:0]r_Loop_Count_1;

  LUT6 #(
    .INIT(64'h00000300AA00AA00)) 
    \r_BCD[0]_i_1 
       (.I0(\r_Binary_reg_n_0_[13] ),
        .I1(o_BCD[0]),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(r_CURRENT_STATE__0[0]),
        .I4(\r_Digit_Index_reg[0]__0_n_0 ),
        .I5(r_CURRENT_STATE__0[1]),
        .O(r_BCD0_in[0]));
  LUT6 #(
    .INIT(64'h3300B0A03C00B0A0)) 
    \r_BCD[10]_i_1 
       (.I0(r_CURRENT_STATE__0[0]),
        .I1(o_BCD[10]),
        .I2(o_BCD[9]),
        .I3(\r_BCD[11]_i_3_n_0 ),
        .I4(r_CURRENT_STATE__0[1]),
        .I5(o_BCD[8]),
        .O(r_BCD0_in[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000A888)) 
    \r_BCD[11]_i_1 
       (.I0(\r_BCD[11]_i_3_n_0 ),
        .I1(o_BCD[11]),
        .I2(\r_BCD[11]_i_4_n_0 ),
        .I3(o_BCD[10]),
        .I4(r_CURRENT_STATE__0[2]),
        .I5(r_Binary_0),
        .O(r_BCD[11]));
  LUT6 #(
    .INIT(64'h48884888FF004800)) 
    \r_BCD[11]_i_2 
       (.I0(o_BCD[11]),
        .I1(\r_BCD[11]_i_3_n_0 ),
        .I2(\r_BCD[11]_i_4_n_0 ),
        .I3(o_BCD[10]),
        .I4(r_CURRENT_STATE__0[0]),
        .I5(r_CURRENT_STATE__0[1]),
        .O(r_BCD0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \r_BCD[11]_i_3 
       (.I0(\r_Digit_Index_reg[0]__0_n_0 ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .O(\r_BCD[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_BCD[11]_i_4 
       (.I0(o_BCD[8]),
        .I1(o_BCD[9]),
        .O(\r_BCD[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h30000000AA00AA00)) 
    \r_BCD[12]_i_1 
       (.I0(o_BCD[11]),
        .I1(o_BCD[12]),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(r_CURRENT_STATE__0[0]),
        .I4(\r_Digit_Index_reg[0]__0_n_0 ),
        .I5(r_CURRENT_STATE__0[1]),
        .O(r_BCD0_in[12]));
  LUT6 #(
    .INIT(64'h80080000FF000000)) 
    \r_BCD[13]_i_1 
       (.I0(\r_Digit_Index_reg[0]__0_n_0 ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(o_BCD[13]),
        .I3(o_BCD[12]),
        .I4(r_CURRENT_STATE__0[0]),
        .I5(r_CURRENT_STATE__0[1]),
        .O(r_BCD0_in[13]));
  LUT6 #(
    .INIT(64'h3300B0A03C00B0A0)) 
    \r_BCD[14]_i_1 
       (.I0(r_CURRENT_STATE__0[0]),
        .I1(o_BCD[14]),
        .I2(o_BCD[13]),
        .I3(\r_BCD[15]_i_3_n_0 ),
        .I4(r_CURRENT_STATE__0[1]),
        .I5(o_BCD[12]),
        .O(r_BCD0_in[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000A888)) 
    \r_BCD[15]_i_1 
       (.I0(\r_BCD[15]_i_3_n_0 ),
        .I1(o_BCD[15]),
        .I2(\r_BCD[15]_i_4_n_0 ),
        .I3(o_BCD[14]),
        .I4(r_CURRENT_STATE__0[2]),
        .I5(r_Binary_0),
        .O(r_BCD[15]));
  LUT6 #(
    .INIT(64'h48884888FF004800)) 
    \r_BCD[15]_i_2 
       (.I0(o_BCD[15]),
        .I1(\r_BCD[15]_i_3_n_0 ),
        .I2(\r_BCD[15]_i_4_n_0 ),
        .I3(o_BCD[14]),
        .I4(r_CURRENT_STATE__0[0]),
        .I5(r_CURRENT_STATE__0[1]),
        .O(r_BCD0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r_BCD[15]_i_3 
       (.I0(\r_Digit_Index_reg[0]__0_n_0 ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .O(\r_BCD[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_BCD[15]_i_4 
       (.I0(o_BCD[12]),
        .I1(o_BCD[13]),
        .O(\r_BCD[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h10010000FF000000)) 
    \r_BCD[1]_i_1 
       (.I0(\r_Digit_Index_reg[0]__0_n_0 ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(o_BCD[1]),
        .I3(o_BCD[0]),
        .I4(r_CURRENT_STATE__0[0]),
        .I5(r_CURRENT_STATE__0[1]),
        .O(r_BCD0_in[1]));
  LUT6 #(
    .INIT(64'h3300B0A03C00B0A0)) 
    \r_BCD[2]_i_1 
       (.I0(r_CURRENT_STATE__0[0]),
        .I1(o_BCD[2]),
        .I2(o_BCD[1]),
        .I3(\r_BCD[3]_i_3_n_0 ),
        .I4(r_CURRENT_STATE__0[1]),
        .I5(o_BCD[0]),
        .O(r_BCD0_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000A888)) 
    \r_BCD[3]_i_1 
       (.I0(\r_BCD[3]_i_3_n_0 ),
        .I1(o_BCD[3]),
        .I2(\r_BCD[3]_i_4_n_0 ),
        .I3(o_BCD[2]),
        .I4(r_CURRENT_STATE__0[2]),
        .I5(r_Binary_0),
        .O(r_BCD[3]));
  LUT6 #(
    .INIT(64'h48884888FF004800)) 
    \r_BCD[3]_i_2 
       (.I0(o_BCD[3]),
        .I1(\r_BCD[3]_i_3_n_0 ),
        .I2(\r_BCD[3]_i_4_n_0 ),
        .I3(o_BCD[2]),
        .I4(r_CURRENT_STATE__0[0]),
        .I5(r_CURRENT_STATE__0[1]),
        .O(r_BCD0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \r_BCD[3]_i_3 
       (.I0(\r_Digit_Index_reg[0]__0_n_0 ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .O(\r_BCD[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_BCD[3]_i_4 
       (.I0(o_BCD[0]),
        .I1(o_BCD[1]),
        .O(\r_BCD[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h03000000AA00AA00)) 
    \r_BCD[4]_i_1 
       (.I0(o_BCD[3]),
        .I1(o_BCD[4]),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(r_CURRENT_STATE__0[0]),
        .I4(\r_Digit_Index_reg[0]__0_n_0 ),
        .I5(r_CURRENT_STATE__0[1]),
        .O(r_BCD0_in[4]));
  LUT6 #(
    .INIT(64'h20020000FF000000)) 
    \r_BCD[5]_i_1 
       (.I0(\r_Digit_Index_reg[0]__0_n_0 ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(o_BCD[5]),
        .I3(o_BCD[4]),
        .I4(r_CURRENT_STATE__0[0]),
        .I5(r_CURRENT_STATE__0[1]),
        .O(r_BCD0_in[5]));
  LUT6 #(
    .INIT(64'h3300B0A03C00B0A0)) 
    \r_BCD[6]_i_1 
       (.I0(r_CURRENT_STATE__0[0]),
        .I1(o_BCD[6]),
        .I2(o_BCD[5]),
        .I3(\r_BCD[7]_i_3_n_0 ),
        .I4(r_CURRENT_STATE__0[1]),
        .I5(o_BCD[4]),
        .O(r_BCD0_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000A888)) 
    \r_BCD[7]_i_1 
       (.I0(\r_BCD[7]_i_3_n_0 ),
        .I1(o_BCD[7]),
        .I2(\r_BCD[7]_i_4_n_0 ),
        .I3(o_BCD[6]),
        .I4(r_CURRENT_STATE__0[2]),
        .I5(r_Binary_0),
        .O(r_BCD[7]));
  LUT6 #(
    .INIT(64'h48884888FF004800)) 
    \r_BCD[7]_i_2 
       (.I0(o_BCD[7]),
        .I1(\r_BCD[7]_i_3_n_0 ),
        .I2(\r_BCD[7]_i_4_n_0 ),
        .I3(o_BCD[6]),
        .I4(r_CURRENT_STATE__0[0]),
        .I5(r_CURRENT_STATE__0[1]),
        .O(r_BCD0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \r_BCD[7]_i_3 
       (.I0(\r_Digit_Index_reg[0]__0_n_0 ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .O(\r_BCD[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_BCD[7]_i_4 
       (.I0(o_BCD[4]),
        .I1(o_BCD[5]),
        .O(\r_BCD[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00003000AA00AA00)) 
    \r_BCD[8]_i_1 
       (.I0(o_BCD[7]),
        .I1(o_BCD[8]),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(r_CURRENT_STATE__0[0]),
        .I4(\r_Digit_Index_reg[0]__0_n_0 ),
        .I5(r_CURRENT_STATE__0[1]),
        .O(r_BCD0_in[8]));
  LUT6 #(
    .INIT(64'h40040000FF000000)) 
    \r_BCD[9]_i_1 
       (.I0(\r_Digit_Index_reg[0]__0_n_0 ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(o_BCD[9]),
        .I3(o_BCD[8]),
        .I4(r_CURRENT_STATE__0[0]),
        .I5(r_CURRENT_STATE__0[1]),
        .O(r_BCD0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[0] 
       (.C(i_Clock),
        .CE(r_BCD[3]),
        .D(r_BCD0_in[0]),
        .Q(o_BCD[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[10] 
       (.C(i_Clock),
        .CE(r_BCD[11]),
        .D(r_BCD0_in[10]),
        .Q(o_BCD[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[11] 
       (.C(i_Clock),
        .CE(r_BCD[11]),
        .D(r_BCD0_in[11]),
        .Q(o_BCD[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[12] 
       (.C(i_Clock),
        .CE(r_BCD[15]),
        .D(r_BCD0_in[12]),
        .Q(o_BCD[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[13] 
       (.C(i_Clock),
        .CE(r_BCD[15]),
        .D(r_BCD0_in[13]),
        .Q(o_BCD[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[14] 
       (.C(i_Clock),
        .CE(r_BCD[15]),
        .D(r_BCD0_in[14]),
        .Q(o_BCD[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[15] 
       (.C(i_Clock),
        .CE(r_BCD[15]),
        .D(r_BCD0_in[15]),
        .Q(o_BCD[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[1] 
       (.C(i_Clock),
        .CE(r_BCD[3]),
        .D(r_BCD0_in[1]),
        .Q(o_BCD[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[2] 
       (.C(i_Clock),
        .CE(r_BCD[3]),
        .D(r_BCD0_in[2]),
        .Q(o_BCD[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[3] 
       (.C(i_Clock),
        .CE(r_BCD[3]),
        .D(r_BCD0_in[3]),
        .Q(o_BCD[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[4] 
       (.C(i_Clock),
        .CE(r_BCD[7]),
        .D(r_BCD0_in[4]),
        .Q(o_BCD[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[5] 
       (.C(i_Clock),
        .CE(r_BCD[7]),
        .D(r_BCD0_in[5]),
        .Q(o_BCD[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[6] 
       (.C(i_Clock),
        .CE(r_BCD[7]),
        .D(r_BCD0_in[6]),
        .Q(o_BCD[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[7] 
       (.C(i_Clock),
        .CE(r_BCD[7]),
        .D(r_BCD0_in[7]),
        .Q(o_BCD[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[8] 
       (.C(i_Clock),
        .CE(r_BCD[11]),
        .D(r_BCD0_in[8]),
        .Q(o_BCD[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[9] 
       (.C(i_Clock),
        .CE(r_BCD[11]),
        .D(r_BCD0_in[9]),
        .Q(o_BCD[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_Binary[0]_i_1 
       (.I0(i_Binary[0]),
        .I1(r_CURRENT_STATE__0[0]),
        .O(r_Binary[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[10]_i_1 
       (.I0(\r_Binary_reg_n_0_[9] ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(i_Binary[10]),
        .O(r_Binary[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[11]_i_1 
       (.I0(\r_Binary_reg_n_0_[10] ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(i_Binary[11]),
        .O(r_Binary[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[12]_i_1 
       (.I0(\r_Binary_reg_n_0_[11] ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(i_Binary[12]),
        .O(r_Binary[12]));
  LUT4 #(
    .INIT(16'h0032)) 
    \r_Binary[13]_i_1 
       (.I0(r_CURRENT_STATE__0[0]),
        .I1(r_CURRENT_STATE__0[1]),
        .I2(i_Start),
        .I3(r_CURRENT_STATE__0[2]),
        .O(r_Binary_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[13]_i_2 
       (.I0(\r_Binary_reg_n_0_[12] ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(i_Binary[13]),
        .O(r_Binary[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[1]_i_1 
       (.I0(\r_Binary_reg_n_0_[0] ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(i_Binary[1]),
        .O(r_Binary[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[2]_i_1 
       (.I0(\r_Binary_reg_n_0_[1] ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(i_Binary[2]),
        .O(r_Binary[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[3]_i_1 
       (.I0(\r_Binary_reg_n_0_[2] ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(i_Binary[3]),
        .O(r_Binary[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[4]_i_1 
       (.I0(\r_Binary_reg_n_0_[3] ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(i_Binary[4]),
        .O(r_Binary[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[5]_i_1 
       (.I0(\r_Binary_reg_n_0_[4] ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(i_Binary[5]),
        .O(r_Binary[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[6]_i_1 
       (.I0(\r_Binary_reg_n_0_[5] ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(i_Binary[6]),
        .O(r_Binary[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[7]_i_1 
       (.I0(\r_Binary_reg_n_0_[6] ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(i_Binary[7]),
        .O(r_Binary[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[8]_i_1 
       (.I0(\r_Binary_reg_n_0_[7] ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(i_Binary[8]),
        .O(r_Binary[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[9]_i_1 
       (.I0(\r_Binary_reg_n_0_[8] ),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(i_Binary[9]),
        .O(r_Binary[9]));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[0] 
       (.C(i_Clock),
        .CE(r_Binary_0),
        .D(r_Binary[0]),
        .Q(\r_Binary_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[10] 
       (.C(i_Clock),
        .CE(r_Binary_0),
        .D(r_Binary[10]),
        .Q(\r_Binary_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[11] 
       (.C(i_Clock),
        .CE(r_Binary_0),
        .D(r_Binary[11]),
        .Q(\r_Binary_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[12] 
       (.C(i_Clock),
        .CE(r_Binary_0),
        .D(r_Binary[12]),
        .Q(\r_Binary_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[13] 
       (.C(i_Clock),
        .CE(r_Binary_0),
        .D(r_Binary[13]),
        .Q(\r_Binary_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[1] 
       (.C(i_Clock),
        .CE(r_Binary_0),
        .D(r_Binary[1]),
        .Q(\r_Binary_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[2] 
       (.C(i_Clock),
        .CE(r_Binary_0),
        .D(r_Binary[2]),
        .Q(\r_Binary_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[3] 
       (.C(i_Clock),
        .CE(r_Binary_0),
        .D(r_Binary[3]),
        .Q(\r_Binary_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[4] 
       (.C(i_Clock),
        .CE(r_Binary_0),
        .D(r_Binary[4]),
        .Q(\r_Binary_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[5] 
       (.C(i_Clock),
        .CE(r_Binary_0),
        .D(r_Binary[5]),
        .Q(\r_Binary_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[6] 
       (.C(i_Clock),
        .CE(r_Binary_0),
        .D(r_Binary[6]),
        .Q(\r_Binary_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[7] 
       (.C(i_Clock),
        .CE(r_Binary_0),
        .D(r_Binary[7]),
        .Q(\r_Binary_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[8] 
       (.C(i_Clock),
        .CE(r_Binary_0),
        .D(r_Binary[8]),
        .Q(\r_Binary_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[9] 
       (.C(i_Clock),
        .CE(r_Binary_0),
        .D(r_Binary[9]),
        .Q(\r_Binary_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h050E)) 
    \r_CURRENT_STATE[0]_i_1 
       (.I0(r_CURRENT_STATE__0[2]),
        .I1(i_Start),
        .I2(r_CURRENT_STATE__0[0]),
        .I3(r_CURRENT_STATE__0[1]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000EF0)) 
    \r_CURRENT_STATE[1]_i_1 
       (.I0(\r_CURRENT_STATE[2]_i_3_n_0 ),
        .I1(\r_CURRENT_STATE[1]_i_2_n_0 ),
        .I2(r_CURRENT_STATE__0[0]),
        .I3(r_CURRENT_STATE__0[1]),
        .I4(r_CURRENT_STATE__0[2]),
        .I5(\r_CURRENT_STATE[1]_i_3_n_0 ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \r_CURRENT_STATE[1]_i_2 
       (.I0(r_Loop_Count[0]),
        .I1(r_Loop_Count[2]),
        .I2(r_Loop_Count[3]),
        .I3(r_Loop_Count[1]),
        .O(\r_CURRENT_STATE[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000070)) 
    \r_CURRENT_STATE[1]_i_3 
       (.I0(\r_Digit_Index_reg_n_0_[1] ),
        .I1(\r_Digit_Index_reg[0]__0_n_0 ),
        .I2(r_CURRENT_STATE__0[2]),
        .I3(r_CURRENT_STATE__0[0]),
        .I4(r_CURRENT_STATE__0[1]),
        .O(\r_CURRENT_STATE[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAB0000)) 
    \r_CURRENT_STATE[2]_i_1 
       (.I0(r_CURRENT_STATE__0[0]),
        .I1(r_Loop_Count[1]),
        .I2(\r_CURRENT_STATE[2]_i_2_n_0 ),
        .I3(\r_CURRENT_STATE[2]_i_3_n_0 ),
        .I4(r_CURRENT_STATE__0[1]),
        .I5(r_CURRENT_STATE__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \r_CURRENT_STATE[2]_i_2 
       (.I0(r_Loop_Count[3]),
        .I1(r_Loop_Count[2]),
        .I2(r_Loop_Count[0]),
        .O(\r_CURRENT_STATE[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_CURRENT_STATE[2]_i_3 
       (.I0(r_Loop_Count[5]),
        .I1(r_Loop_Count[4]),
        .I2(r_Loop_Count[7]),
        .I3(r_Loop_Count[6]),
        .O(\r_CURRENT_STATE[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CURRENT_STATE_reg[0] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(r_CURRENT_STATE__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_CURRENT_STATE_reg[1] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(r_CURRENT_STATE__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_CURRENT_STATE_reg[2] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(r_CURRENT_STATE__0[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFD02)) 
    \r_Digit_Index[0]__0_i_1 
       (.I0(r_CURRENT_STATE__0[2]),
        .I1(r_CURRENT_STATE__0[0]),
        .I2(r_CURRENT_STATE__0[1]),
        .I3(\r_Digit_Index_reg[0]__0_n_0 ),
        .O(\r_Digit_Index[0]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFDFF0200)) 
    \r_Digit_Index[1]_i_1 
       (.I0(\r_Digit_Index_reg[0]__0_n_0 ),
        .I1(r_CURRENT_STATE__0[1]),
        .I2(r_CURRENT_STATE__0[0]),
        .I3(r_CURRENT_STATE__0[2]),
        .I4(\r_Digit_Index_reg_n_0_[1] ),
        .O(\r_Digit_Index[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Digit_Index_reg[0]__0 
       (.C(i_Clock),
        .CE(1'b1),
        .D(\r_Digit_Index[0]__0_i_1_n_0 ),
        .Q(\r_Digit_Index_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Digit_Index_reg[1] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(\r_Digit_Index[1]_i_1_n_0 ),
        .Q(\r_Digit_Index_reg_n_0_[1] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_Loop_Count[0]_i_1 
       (.I0(r_Loop_Count[0]),
        .O(r_Loop_Count_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00FFBF00)) 
    \r_Loop_Count[1]_i_1 
       (.I0(\r_CURRENT_STATE[2]_i_3_n_0 ),
        .I1(r_Loop_Count[3]),
        .I2(r_Loop_Count[2]),
        .I3(r_Loop_Count[0]),
        .I4(r_Loop_Count[1]),
        .O(r_Loop_Count_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3C34CCCC)) 
    \r_Loop_Count[2]_i_1 
       (.I0(r_Loop_Count[3]),
        .I1(r_Loop_Count[2]),
        .I2(r_Loop_Count[1]),
        .I3(\r_CURRENT_STATE[2]_i_3_n_0 ),
        .I4(r_Loop_Count[0]),
        .O(r_Loop_Count_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6C64CCCC)) 
    \r_Loop_Count[3]_i_1 
       (.I0(r_Loop_Count[2]),
        .I1(r_Loop_Count[3]),
        .I2(r_Loop_Count[1]),
        .I3(\r_CURRENT_STATE[2]_i_3_n_0 ),
        .I4(r_Loop_Count[0]),
        .O(r_Loop_Count_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_Loop_Count[4]_i_1 
       (.I0(r_Loop_Count[1]),
        .I1(r_Loop_Count[3]),
        .I2(r_Loop_Count[2]),
        .I3(r_Loop_Count[0]),
        .I4(r_Loop_Count[4]),
        .O(r_Loop_Count_1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_Loop_Count[5]_i_1 
       (.I0(r_Loop_Count[4]),
        .I1(r_Loop_Count[0]),
        .I2(r_Loop_Count[2]),
        .I3(r_Loop_Count[3]),
        .I4(r_Loop_Count[1]),
        .I5(r_Loop_Count[5]),
        .O(r_Loop_Count_1[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \r_Loop_Count[6]_i_1 
       (.I0(\r_Loop_Count[7]_i_3_n_0 ),
        .I1(r_Loop_Count[6]),
        .O(r_Loop_Count_1[6]));
  LUT3 #(
    .INIT(8'h04)) 
    \r_Loop_Count[7]_i_1 
       (.I0(r_CURRENT_STATE__0[2]),
        .I1(r_CURRENT_STATE__0[1]),
        .I2(r_CURRENT_STATE__0[0]),
        .O(\r_Loop_Count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \r_Loop_Count[7]_i_2 
       (.I0(r_Loop_Count[6]),
        .I1(\r_Loop_Count[7]_i_3_n_0 ),
        .I2(r_Loop_Count[7]),
        .O(r_Loop_Count_1[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r_Loop_Count[7]_i_3 
       (.I0(r_Loop_Count[4]),
        .I1(r_Loop_Count[0]),
        .I2(r_Loop_Count[2]),
        .I3(r_Loop_Count[3]),
        .I4(r_Loop_Count[1]),
        .I5(r_Loop_Count[5]),
        .O(\r_Loop_Count[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Loop_Count_reg[0] 
       (.C(i_Clock),
        .CE(\r_Loop_Count[7]_i_1_n_0 ),
        .D(r_Loop_Count_1[0]),
        .Q(r_Loop_Count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Loop_Count_reg[1] 
       (.C(i_Clock),
        .CE(\r_Loop_Count[7]_i_1_n_0 ),
        .D(r_Loop_Count_1[1]),
        .Q(r_Loop_Count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Loop_Count_reg[2] 
       (.C(i_Clock),
        .CE(\r_Loop_Count[7]_i_1_n_0 ),
        .D(r_Loop_Count_1[2]),
        .Q(r_Loop_Count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Loop_Count_reg[3] 
       (.C(i_Clock),
        .CE(\r_Loop_Count[7]_i_1_n_0 ),
        .D(r_Loop_Count_1[3]),
        .Q(r_Loop_Count[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Loop_Count_reg[4] 
       (.C(i_Clock),
        .CE(\r_Loop_Count[7]_i_1_n_0 ),
        .D(r_Loop_Count_1[4]),
        .Q(r_Loop_Count[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Loop_Count_reg[5] 
       (.C(i_Clock),
        .CE(\r_Loop_Count[7]_i_1_n_0 ),
        .D(r_Loop_Count_1[5]),
        .Q(r_Loop_Count[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Loop_Count_reg[6] 
       (.C(i_Clock),
        .CE(\r_Loop_Count[7]_i_1_n_0 ),
        .D(r_Loop_Count_1[6]),
        .Q(r_Loop_Count[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Loop_Count_reg[7] 
       (.C(i_Clock),
        .CE(\r_Loop_Count[7]_i_1_n_0 ),
        .D(r_Loop_Count_1[7]),
        .Q(r_Loop_Count[7]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "Reaction_Time_Averager_BINARY_TO_BCD_0_0,BINARY_TO_BCD,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "BINARY_TO_BCD,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_Clock,
    i_Binary,
    i_Start,
    o_BCD);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_Clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_Clock, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_i_CLK" *) input i_Clock;
  input [13:0]i_Binary;
  input i_Start;
  output [15:0]o_BCD;

  wire [13:0]i_Binary;
  wire i_Clock;
  wire i_Start;
  wire [15:0]o_BCD;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BINARY_TO_BCD inst
       (.i_Binary(i_Binary),
        .i_Clock(i_Clock),
        .i_Start(i_Start),
        .o_BCD(o_BCD));
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
