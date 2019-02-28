// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Aug 28 17:52:02 2018
// Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Sergaljerk/WSU-CPTE/Module_8/Module_8.sim/sim_1/synth/func/xsim/clock_divider_tb_func_synth.v
// Design      : clock_divider
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module clock_divider
   (i_CLK,
    i_RST,
    o_LED);
  input i_CLK;
  input i_RST;
  output o_LED;

  wire \dff_ist[10].dff_x_n_0 ;
  wire \dff_ist[11].dff_x_n_0 ;
  wire \dff_ist[12].dff_x_n_0 ;
  wire \dff_ist[13].dff_x_n_0 ;
  wire \dff_ist[14].dff_x_n_0 ;
  wire \dff_ist[15].dff_x_n_0 ;
  wire \dff_ist[16].dff_x_n_0 ;
  wire \dff_ist[17].dff_x_n_0 ;
  wire \dff_ist[18].dff_x_n_0 ;
  wire \dff_ist[19].dff_x_n_0 ;
  wire \dff_ist[1].dff_x_n_0 ;
  wire \dff_ist[20].dff_x_n_0 ;
  wire \dff_ist[21].dff_x_n_0 ;
  wire \dff_ist[22].dff_x_n_0 ;
  wire \dff_ist[23].dff_x_n_0 ;
  wire \dff_ist[24].dff_x_n_0 ;
  wire \dff_ist[25].dff_x_n_0 ;
  wire \dff_ist[2].dff_x_n_0 ;
  wire \dff_ist[3].dff_x_n_0 ;
  wire \dff_ist[4].dff_x_n_0 ;
  wire \dff_ist[5].dff_x_n_0 ;
  wire \dff_ist[6].dff_x_n_0 ;
  wire \dff_ist[7].dff_x_n_0 ;
  wire \dff_ist[8].dff_x_n_0 ;
  wire \dff_ist[9].dff_x_n_0 ;
  wire i_CLK;
  wire i_CLK_IBUF;
  wire i_CLK_IBUF_BUFG;
  wire i_RST;
  wire i_RST_IBUF;
  wire o_LED;
  wire o_LED_OBUF;
  wire o_Q;

  dff dff_in
       (.i_CLK_IBUF_BUFG(i_CLK_IBUF_BUFG),
        .i_RST_IBUF(i_RST_IBUF),
        .o_Q(o_Q));
  dff_0 \dff_ist[10].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[10].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[9].dff_x_n_0 ));
  dff_1 \dff_ist[11].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[11].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[10].dff_x_n_0 ));
  dff_2 \dff_ist[12].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[12].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[11].dff_x_n_0 ));
  dff_3 \dff_ist[13].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[13].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[12].dff_x_n_0 ));
  dff_4 \dff_ist[14].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[14].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[13].dff_x_n_0 ));
  dff_5 \dff_ist[15].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[15].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[14].dff_x_n_0 ));
  dff_6 \dff_ist[16].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[16].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[15].dff_x_n_0 ));
  dff_7 \dff_ist[17].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[17].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[16].dff_x_n_0 ));
  dff_8 \dff_ist[18].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[18].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[17].dff_x_n_0 ));
  dff_9 \dff_ist[19].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[19].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[18].dff_x_n_0 ));
  dff_10 \dff_ist[1].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q(o_Q),
        .o_Q_reg_0(\dff_ist[1].dff_x_n_0 ));
  dff_11 \dff_ist[20].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[20].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[19].dff_x_n_0 ));
  dff_12 \dff_ist[21].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[21].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[20].dff_x_n_0 ));
  dff_13 \dff_ist[22].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[22].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[21].dff_x_n_0 ));
  dff_14 \dff_ist[23].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[23].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[22].dff_x_n_0 ));
  dff_15 \dff_ist[24].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[24].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[23].dff_x_n_0 ));
  dff_16 \dff_ist[25].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[25].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[24].dff_x_n_0 ));
  dff_17 \dff_ist[26].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_LED_OBUF(o_LED_OBUF),
        .o_Q_reg_0(\dff_ist[25].dff_x_n_0 ));
  dff_18 \dff_ist[2].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[2].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[1].dff_x_n_0 ));
  dff_19 \dff_ist[3].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[3].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[2].dff_x_n_0 ));
  dff_20 \dff_ist[4].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[4].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[3].dff_x_n_0 ));
  dff_21 \dff_ist[5].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[5].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[4].dff_x_n_0 ));
  dff_22 \dff_ist[6].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[6].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[5].dff_x_n_0 ));
  dff_23 \dff_ist[7].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[7].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[6].dff_x_n_0 ));
  dff_24 \dff_ist[8].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[8].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[7].dff_x_n_0 ));
  dff_25 \dff_ist[9].dff_x 
       (.i_RST_IBUF(i_RST_IBUF),
        .o_Q_reg_0(\dff_ist[9].dff_x_n_0 ),
        .o_Q_reg_1(\dff_ist[8].dff_x_n_0 ));
  BUFG i_CLK_IBUF_BUFG_inst
       (.I(i_CLK_IBUF),
        .O(i_CLK_IBUF_BUFG));
  IBUF i_CLK_IBUF_inst
       (.I(i_CLK),
        .O(i_CLK_IBUF));
  IBUF i_RST_IBUF_inst
       (.I(i_RST),
        .O(i_RST_IBUF));
  OBUF o_LED_OBUF_inst
       (.I(o_LED_OBUF),
        .O(o_LED));
endmodule

module dff
   (o_Q,
    i_CLK_IBUF_BUFG,
    i_RST_IBUF);
  output o_Q;
  input i_CLK_IBUF_BUFG;
  input i_RST_IBUF;

  wire i_CLK_IBUF_BUFG;
  wire i_RST_IBUF;
  wire o_Q;
  wire o_Q_i_1_n_0;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1
       (.I0(o_Q),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(o_Q_i_1_n_0),
        .Q(o_Q),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_0
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__9_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__9
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__9_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_1
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__10_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__10
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__10_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__10_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_10
   (o_Q_reg_0,
    o_Q,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q;
  wire o_Q_i_1__0_n_0;
  wire o_Q_reg_0;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__0
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q),
        .CE(1'b1),
        .D(o_Q_i_1__0_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_11
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__19_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__19
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__19_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__19_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_12
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__20_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__20
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__20_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__20_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_13
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__21_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__21
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__21_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__21_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_14
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__22_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__22
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__22_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__22_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_15
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__23_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__23
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__23_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__23_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_16
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__24_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__24
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__24_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__24_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_17
   (o_LED_OBUF,
    o_Q_reg_0,
    i_RST_IBUF);
  output o_LED_OBUF;
  input o_Q_reg_0;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_LED_OBUF;
  wire o_Q_i_1__25_n_0;
  wire o_Q_reg_0;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__25
       (.I0(o_LED_OBUF),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__25_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_0),
        .CE(1'b1),
        .D(o_Q_i_1__25_n_0),
        .Q(o_LED_OBUF),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_18
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__1_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__1
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__1_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_19
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__2_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__2
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__2_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_2
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__11_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__11
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__11_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__11_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_20
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__3_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__3
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__3_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_21
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__4_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__4
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__4_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_22
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__5_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__5
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__5_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_23
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__6_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__6
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__6_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_24
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__7_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__7
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__7_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_25
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__8_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__8
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__8_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_3
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__12_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__12
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__12_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__12_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_4
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__13_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__13
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__13_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__13_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_5
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__14_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__14
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__14_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__14_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_6
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__15_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__15
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__15_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__15_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_7
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__16_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__16
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__16_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__16_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_8
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__17_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__17
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__17_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__17_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_9
   (o_Q_reg_0,
    o_Q_reg_1,
    i_RST_IBUF);
  output o_Q_reg_0;
  input o_Q_reg_1;
  input i_RST_IBUF;

  wire i_RST_IBUF;
  wire o_Q_i_1__18_n_0;
  wire o_Q_reg_0;
  wire o_Q_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    o_Q_i_1__18
       (.I0(o_Q_reg_0),
        .I1(i_RST_IBUF),
        .O(o_Q_i_1__18_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_Q_reg
       (.C(o_Q_reg_1),
        .CE(1'b1),
        .D(o_Q_i_1__18_n_0),
        .Q(o_Q_reg_0),
        .R(1'b0));
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
