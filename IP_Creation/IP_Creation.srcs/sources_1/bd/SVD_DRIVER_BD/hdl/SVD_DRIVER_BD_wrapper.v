//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat Mar  2 22:09:20 2019
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target SVD_DRIVER_BD_wrapper.bd
//Design      : SVD_DRIVER_BD_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SVD_DRIVER_BD_wrapper
   (i_CLK,
    i_CLK_EN,
    i_RST,
    o_DIGIT_1,
    o_DIGIT_2,
    o_DIGIT_3,
    o_DIGIT_4);
  input i_CLK;
  input i_CLK_EN;
  input i_RST;
  output [3:0]o_DIGIT_1;
  output [3:0]o_DIGIT_2;
  output [3:0]o_DIGIT_3;
  output [3:0]o_DIGIT_4;

  wire i_CLK;
  wire i_CLK_EN;
  wire i_RST;
  wire [3:0]o_DIGIT_1;
  wire [3:0]o_DIGIT_2;
  wire [3:0]o_DIGIT_3;
  wire [3:0]o_DIGIT_4;

  SVD_DRIVER_BD SVD_DRIVER_BD_i
       (.i_CLK(i_CLK),
        .i_CLK_EN(i_CLK_EN),
        .i_RST(i_RST),
        .o_DIGIT_1(o_DIGIT_1),
        .o_DIGIT_2(o_DIGIT_2),
        .o_DIGIT_3(o_DIGIT_3),
        .o_DIGIT_4(o_DIGIT_4));
endmodule
