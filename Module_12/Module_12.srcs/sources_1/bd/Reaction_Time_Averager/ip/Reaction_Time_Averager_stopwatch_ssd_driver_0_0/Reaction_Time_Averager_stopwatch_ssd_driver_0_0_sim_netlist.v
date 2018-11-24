// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 23 15:49:24 2018
// Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Necryotiks/AppData/Roaming/SPB_Data/WSU-CPTE/Module_12/Module_12.srcs/sources_1/bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_stopwatch_ssd_driver_0_0/Reaction_Time_Averager_stopwatch_ssd_driver_0_0_sim_netlist.v
// Design      : Reaction_Time_Averager_stopwatch_ssd_driver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Reaction_Time_Averager_stopwatch_ssd_driver_0_0,stopwatch_ssd_driver,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "stopwatch_ssd_driver,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module Reaction_Time_Averager_stopwatch_ssd_driver_0_0
   (i_SUBCLK,
    i_RST,
    i_CLK_EN,
    i_SRST,
    o_Digit_1_val,
    o_Digit_2_val,
    o_Digit_3_val,
    o_Digit_4_val);
  input i_SUBCLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_RST, POLARITY ACTIVE_LOW" *) input i_RST;
  input i_CLK_EN;
  input i_SRST;
  output [3:0]o_Digit_1_val;
  output [3:0]o_Digit_2_val;
  output [3:0]o_Digit_3_val;
  output [3:0]o_Digit_4_val;

  wire i_CLK_EN;
  wire i_RST;
  wire i_SRST;
  wire i_SUBCLK;
  wire [3:0]o_Digit_1_val;
  wire [3:0]o_Digit_2_val;
  wire [3:0]o_Digit_3_val;
  wire [3:0]o_Digit_4_val;

  Reaction_Time_Averager_stopwatch_ssd_driver_0_0_stopwatch_ssd_driver inst
       (.Q(o_Digit_4_val),
        .i_CLK_EN(i_CLK_EN),
        .i_RST(i_RST),
        .i_SRST(i_SRST),
        .i_SUBCLK(i_SUBCLK),
        .\o_Digit_1_val[3] (o_Digit_1_val),
        .\o_Digit_2_val[3] (o_Digit_2_val),
        .\o_Digit_3_val[3] (o_Digit_3_val));
endmodule

(* ORIG_REF_NAME = "stopwatch_ssd_driver" *) 
module Reaction_Time_Averager_stopwatch_ssd_driver_0_0_stopwatch_ssd_driver
   (Q,
    \o_Digit_3_val[3] ,
    \o_Digit_2_val[3] ,
    \o_Digit_1_val[3] ,
    i_SRST,
    i_CLK_EN,
    i_SUBCLK,
    i_RST);
  output [3:0]Q;
  output [3:0]\o_Digit_3_val[3] ;
  output [3:0]\o_Digit_2_val[3] ;
  output [3:0]\o_Digit_1_val[3] ;
  input i_SRST;
  input i_CLK_EN;
  input i_SUBCLK;
  input i_RST;

  wire [3:0]Q;
  wire i_CLK_EN;
  wire i_RST;
  wire i_SRST;
  wire i_SUBCLK;
  wire [3:0]\o_Digit_1_val[3] ;
  wire [3:0]\o_Digit_2_val[3] ;
  wire [3:0]\o_Digit_3_val[3] ;
  wire \r_Digit_1_val[0]_i_1_n_0 ;
  wire \r_Digit_1_val[1]_i_1_n_0 ;
  wire \r_Digit_1_val[2]_i_1_n_0 ;
  wire \r_Digit_1_val[3]_i_1_n_0 ;
  wire \r_Digit_1_val[3]_i_2_n_0 ;
  wire \r_Digit_1_val[3]_i_3_n_0 ;
  wire \r_Digit_1_val[3]_i_4_n_0 ;
  wire \r_Digit_1_val[3]_i_5_n_0 ;
  wire \r_Digit_2_val[0]_i_1_n_0 ;
  wire \r_Digit_2_val[1]_i_1_n_0 ;
  wire \r_Digit_2_val[2]_i_1_n_0 ;
  wire \r_Digit_2_val[3]_i_1_n_0 ;
  wire \r_Digit_2_val[3]_i_2_n_0 ;
  wire \r_Digit_3_val[0]_i_1_n_0 ;
  wire \r_Digit_3_val[1]_i_1_n_0 ;
  wire \r_Digit_3_val[2]_i_1_n_0 ;
  wire \r_Digit_3_val[3]_i_1_n_0 ;
  wire \r_Digit_3_val[3]_i_2_n_0 ;
  wire \r_Digit_4_val[0]_i_1_n_0 ;
  wire \r_Digit_4_val[1]_i_1_n_0 ;
  wire \r_Digit_4_val[2]_i_1_n_0 ;
  wire \r_Digit_4_val[3]_i_1_n_0 ;
  wire \r_Digit_4_val[3]_i_2_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000155)) 
    \r_Digit_1_val[0]_i_1 
       (.I0(\o_Digit_1_val[3] [0]),
        .I1(\o_Digit_1_val[3] [2]),
        .I2(\o_Digit_1_val[3] [1]),
        .I3(\o_Digit_1_val[3] [3]),
        .I4(i_SRST),
        .O(\r_Digit_1_val[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \r_Digit_1_val[1]_i_1 
       (.I0(\o_Digit_1_val[3] [1]),
        .I1(\o_Digit_1_val[3] [0]),
        .I2(\o_Digit_1_val[3] [3]),
        .I3(i_SRST),
        .O(\r_Digit_1_val[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0000006A)) 
    \r_Digit_1_val[2]_i_1 
       (.I0(\o_Digit_1_val[3] [2]),
        .I1(\o_Digit_1_val[3] [1]),
        .I2(\o_Digit_1_val[3] [0]),
        .I3(\o_Digit_1_val[3] [3]),
        .I4(i_SRST),
        .O(\r_Digit_1_val[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \r_Digit_1_val[3]_i_1 
       (.I0(i_SRST),
        .I1(\r_Digit_1_val[3]_i_3_n_0 ),
        .I2(\r_Digit_1_val[3]_i_4_n_0 ),
        .I3(i_CLK_EN),
        .I4(\r_Digit_1_val[3]_i_5_n_0 ),
        .O(\r_Digit_1_val[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000180)) 
    \r_Digit_1_val[3]_i_2 
       (.I0(\o_Digit_1_val[3] [2]),
        .I1(\o_Digit_1_val[3] [1]),
        .I2(\o_Digit_1_val[3] [0]),
        .I3(\o_Digit_1_val[3] [3]),
        .I4(i_SRST),
        .O(\r_Digit_1_val[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_Digit_1_val[3]_i_3 
       (.I0(\o_Digit_3_val[3] [2]),
        .I1(\o_Digit_3_val[3] [1]),
        .I2(\o_Digit_3_val[3] [0]),
        .I3(\o_Digit_3_val[3] [3]),
        .O(\r_Digit_1_val[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_Digit_1_val[3]_i_4 
       (.I0(\o_Digit_2_val[3] [2]),
        .I1(\o_Digit_2_val[3] [1]),
        .I2(\o_Digit_2_val[3] [0]),
        .I3(\o_Digit_2_val[3] [3]),
        .O(\r_Digit_1_val[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_Digit_1_val[3]_i_5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\r_Digit_1_val[3]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Digit_1_val_reg[0] 
       (.C(i_SUBCLK),
        .CE(\r_Digit_1_val[3]_i_1_n_0 ),
        .CLR(i_RST),
        .D(\r_Digit_1_val[0]_i_1_n_0 ),
        .Q(\o_Digit_1_val[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Digit_1_val_reg[1] 
       (.C(i_SUBCLK),
        .CE(\r_Digit_1_val[3]_i_1_n_0 ),
        .CLR(i_RST),
        .D(\r_Digit_1_val[1]_i_1_n_0 ),
        .Q(\o_Digit_1_val[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Digit_1_val_reg[2] 
       (.C(i_SUBCLK),
        .CE(\r_Digit_1_val[3]_i_1_n_0 ),
        .CLR(i_RST),
        .D(\r_Digit_1_val[2]_i_1_n_0 ),
        .Q(\o_Digit_1_val[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Digit_1_val_reg[3] 
       (.C(i_SUBCLK),
        .CE(\r_Digit_1_val[3]_i_1_n_0 ),
        .CLR(i_RST),
        .D(\r_Digit_1_val[3]_i_2_n_0 ),
        .Q(\o_Digit_1_val[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000155)) 
    \r_Digit_2_val[0]_i_1 
       (.I0(\o_Digit_2_val[3] [0]),
        .I1(\o_Digit_2_val[3] [2]),
        .I2(\o_Digit_2_val[3] [1]),
        .I3(\o_Digit_2_val[3] [3]),
        .I4(i_SRST),
        .O(\r_Digit_2_val[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0006)) 
    \r_Digit_2_val[1]_i_1 
       (.I0(\o_Digit_2_val[3] [1]),
        .I1(\o_Digit_2_val[3] [0]),
        .I2(\o_Digit_2_val[3] [3]),
        .I3(i_SRST),
        .O(\r_Digit_2_val[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0000006A)) 
    \r_Digit_2_val[2]_i_1 
       (.I0(\o_Digit_2_val[3] [2]),
        .I1(\o_Digit_2_val[3] [1]),
        .I2(\o_Digit_2_val[3] [0]),
        .I3(\o_Digit_2_val[3] [3]),
        .I4(i_SRST),
        .O(\r_Digit_2_val[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \r_Digit_2_val[3]_i_1 
       (.I0(i_SRST),
        .I1(\r_Digit_1_val[3]_i_5_n_0 ),
        .I2(\r_Digit_1_val[3]_i_3_n_0 ),
        .I3(i_CLK_EN),
        .O(\r_Digit_2_val[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000180)) 
    \r_Digit_2_val[3]_i_2 
       (.I0(\o_Digit_2_val[3] [2]),
        .I1(\o_Digit_2_val[3] [1]),
        .I2(\o_Digit_2_val[3] [0]),
        .I3(\o_Digit_2_val[3] [3]),
        .I4(i_SRST),
        .O(\r_Digit_2_val[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Digit_2_val_reg[0] 
       (.C(i_SUBCLK),
        .CE(\r_Digit_2_val[3]_i_1_n_0 ),
        .CLR(i_RST),
        .D(\r_Digit_2_val[0]_i_1_n_0 ),
        .Q(\o_Digit_2_val[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Digit_2_val_reg[1] 
       (.C(i_SUBCLK),
        .CE(\r_Digit_2_val[3]_i_1_n_0 ),
        .CLR(i_RST),
        .D(\r_Digit_2_val[1]_i_1_n_0 ),
        .Q(\o_Digit_2_val[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Digit_2_val_reg[2] 
       (.C(i_SUBCLK),
        .CE(\r_Digit_2_val[3]_i_1_n_0 ),
        .CLR(i_RST),
        .D(\r_Digit_2_val[2]_i_1_n_0 ),
        .Q(\o_Digit_2_val[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Digit_2_val_reg[3] 
       (.C(i_SUBCLK),
        .CE(\r_Digit_2_val[3]_i_1_n_0 ),
        .CLR(i_RST),
        .D(\r_Digit_2_val[3]_i_2_n_0 ),
        .Q(\o_Digit_2_val[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000155)) 
    \r_Digit_3_val[0]_i_1 
       (.I0(\o_Digit_3_val[3] [0]),
        .I1(\o_Digit_3_val[3] [2]),
        .I2(\o_Digit_3_val[3] [1]),
        .I3(\o_Digit_3_val[3] [3]),
        .I4(i_SRST),
        .O(\r_Digit_3_val[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0006)) 
    \r_Digit_3_val[1]_i_1 
       (.I0(\o_Digit_3_val[3] [1]),
        .I1(\o_Digit_3_val[3] [0]),
        .I2(\o_Digit_3_val[3] [3]),
        .I3(i_SRST),
        .O(\r_Digit_3_val[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000006A)) 
    \r_Digit_3_val[2]_i_1 
       (.I0(\o_Digit_3_val[3] [2]),
        .I1(\o_Digit_3_val[3] [1]),
        .I2(\o_Digit_3_val[3] [0]),
        .I3(\o_Digit_3_val[3] [3]),
        .I4(i_SRST),
        .O(\r_Digit_3_val[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAAAAAAAAAAA)) 
    \r_Digit_3_val[3]_i_1 
       (.I0(i_SRST),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(i_CLK_EN),
        .O(\r_Digit_3_val[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000180)) 
    \r_Digit_3_val[3]_i_2 
       (.I0(\o_Digit_3_val[3] [2]),
        .I1(\o_Digit_3_val[3] [1]),
        .I2(\o_Digit_3_val[3] [0]),
        .I3(\o_Digit_3_val[3] [3]),
        .I4(i_SRST),
        .O(\r_Digit_3_val[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Digit_3_val_reg[0] 
       (.C(i_SUBCLK),
        .CE(\r_Digit_3_val[3]_i_1_n_0 ),
        .CLR(i_RST),
        .D(\r_Digit_3_val[0]_i_1_n_0 ),
        .Q(\o_Digit_3_val[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Digit_3_val_reg[1] 
       (.C(i_SUBCLK),
        .CE(\r_Digit_3_val[3]_i_1_n_0 ),
        .CLR(i_RST),
        .D(\r_Digit_3_val[1]_i_1_n_0 ),
        .Q(\o_Digit_3_val[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Digit_3_val_reg[2] 
       (.C(i_SUBCLK),
        .CE(\r_Digit_3_val[3]_i_1_n_0 ),
        .CLR(i_RST),
        .D(\r_Digit_3_val[2]_i_1_n_0 ),
        .Q(\o_Digit_3_val[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Digit_3_val_reg[3] 
       (.C(i_SUBCLK),
        .CE(\r_Digit_3_val[3]_i_1_n_0 ),
        .CLR(i_RST),
        .D(\r_Digit_3_val[3]_i_2_n_0 ),
        .Q(\o_Digit_3_val[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000155)) 
    \r_Digit_4_val[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(i_SRST),
        .O(\r_Digit_4_val[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0006)) 
    \r_Digit_4_val[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(i_SRST),
        .O(\r_Digit_4_val[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000006A)) 
    \r_Digit_4_val[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(i_SRST),
        .O(\r_Digit_4_val[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_Digit_4_val[3]_i_1 
       (.I0(i_SRST),
        .I1(i_CLK_EN),
        .O(\r_Digit_4_val[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000180)) 
    \r_Digit_4_val[3]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(i_SRST),
        .O(\r_Digit_4_val[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Digit_4_val_reg[0] 
       (.C(i_SUBCLK),
        .CE(\r_Digit_4_val[3]_i_1_n_0 ),
        .CLR(i_RST),
        .D(\r_Digit_4_val[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Digit_4_val_reg[1] 
       (.C(i_SUBCLK),
        .CE(\r_Digit_4_val[3]_i_1_n_0 ),
        .CLR(i_RST),
        .D(\r_Digit_4_val[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Digit_4_val_reg[2] 
       (.C(i_SUBCLK),
        .CE(\r_Digit_4_val[3]_i_1_n_0 ),
        .CLR(i_RST),
        .D(\r_Digit_4_val[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Digit_4_val_reg[3] 
       (.C(i_SUBCLK),
        .CE(\r_Digit_4_val[3]_i_1_n_0 ),
        .CLR(i_RST),
        .D(\r_Digit_4_val[3]_i_2_n_0 ),
        .Q(Q[3]));
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
