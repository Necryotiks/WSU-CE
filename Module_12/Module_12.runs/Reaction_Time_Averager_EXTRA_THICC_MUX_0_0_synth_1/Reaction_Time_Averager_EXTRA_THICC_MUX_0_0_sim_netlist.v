// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 23 13:13:33 2018
// Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_EXTRA_THICC_MUX_0_0_sim_netlist.v
// Design      : Reaction_Time_Averager_EXTRA_THICC_MUX_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_EXTRA_THICC_MUX
   (o_Digit_1,
    o_Digit_2,
    o_Digit_3,
    o_Digit_4,
    i_CLK,
    i_T_Digit_1,
    i_Sel,
    i_SW_Digit_1,
    i_T_Digit_2,
    i_SW_Digit_2,
    i_T_Digit_3,
    i_SW_Digit_3,
    i_T_Digit_4,
    i_SW_Digit_4);
  output [3:0]o_Digit_1;
  output [3:0]o_Digit_2;
  output [3:0]o_Digit_3;
  output [3:0]o_Digit_4;
  input i_CLK;
  input [3:0]i_T_Digit_1;
  input i_Sel;
  input [3:0]i_SW_Digit_1;
  input [3:0]i_T_Digit_2;
  input [3:0]i_SW_Digit_2;
  input [3:0]i_T_Digit_3;
  input [3:0]i_SW_Digit_3;
  input [3:0]i_T_Digit_4;
  input [3:0]i_SW_Digit_4;

  wire i_CLK;
  wire [3:0]i_SW_Digit_1;
  wire [3:0]i_SW_Digit_2;
  wire [3:0]i_SW_Digit_3;
  wire [3:0]i_SW_Digit_4;
  wire i_Sel;
  wire [3:0]i_T_Digit_1;
  wire [3:0]i_T_Digit_2;
  wire [3:0]i_T_Digit_3;
  wire [3:0]i_T_Digit_4;
  wire [3:0]o_Digit_1;
  wire [3:0]o_Digit_2;
  wire [3:0]o_Digit_3;
  wire [3:0]o_Digit_4;
  wire \r_Digit_1[0]_i_1_n_0 ;
  wire \r_Digit_1[1]_i_1_n_0 ;
  wire \r_Digit_1[2]_i_1_n_0 ;
  wire \r_Digit_1[3]_i_1_n_0 ;
  wire \r_Digit_2[0]_i_1_n_0 ;
  wire \r_Digit_2[1]_i_1_n_0 ;
  wire \r_Digit_2[2]_i_1_n_0 ;
  wire \r_Digit_2[3]_i_1_n_0 ;
  wire \r_Digit_3[0]_i_1_n_0 ;
  wire \r_Digit_3[1]_i_1_n_0 ;
  wire \r_Digit_3[2]_i_1_n_0 ;
  wire \r_Digit_3[3]_i_1_n_0 ;
  wire \r_Digit_4[0]_i_1_n_0 ;
  wire \r_Digit_4[1]_i_1_n_0 ;
  wire \r_Digit_4[2]_i_1_n_0 ;
  wire \r_Digit_4[3]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Digit_1[0]_i_1 
       (.I0(i_T_Digit_1[0]),
        .I1(i_Sel),
        .I2(i_SW_Digit_1[0]),
        .O(\r_Digit_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Digit_1[1]_i_1 
       (.I0(i_T_Digit_1[1]),
        .I1(i_Sel),
        .I2(i_SW_Digit_1[1]),
        .O(\r_Digit_1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Digit_1[2]_i_1 
       (.I0(i_T_Digit_1[2]),
        .I1(i_Sel),
        .I2(i_SW_Digit_1[2]),
        .O(\r_Digit_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Digit_1[3]_i_1 
       (.I0(i_T_Digit_1[3]),
        .I1(i_Sel),
        .I2(i_SW_Digit_1[3]),
        .O(\r_Digit_1[3]_i_1_n_0 ));
  FDRE \r_Digit_1_reg[0] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_Digit_1[0]_i_1_n_0 ),
        .Q(o_Digit_1[0]),
        .R(1'b0));
  FDRE \r_Digit_1_reg[1] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_Digit_1[1]_i_1_n_0 ),
        .Q(o_Digit_1[1]),
        .R(1'b0));
  FDRE \r_Digit_1_reg[2] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_Digit_1[2]_i_1_n_0 ),
        .Q(o_Digit_1[2]),
        .R(1'b0));
  FDRE \r_Digit_1_reg[3] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_Digit_1[3]_i_1_n_0 ),
        .Q(o_Digit_1[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Digit_2[0]_i_1 
       (.I0(i_T_Digit_2[0]),
        .I1(i_Sel),
        .I2(i_SW_Digit_2[0]),
        .O(\r_Digit_2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Digit_2[1]_i_1 
       (.I0(i_T_Digit_2[1]),
        .I1(i_Sel),
        .I2(i_SW_Digit_2[1]),
        .O(\r_Digit_2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Digit_2[2]_i_1 
       (.I0(i_T_Digit_2[2]),
        .I1(i_Sel),
        .I2(i_SW_Digit_2[2]),
        .O(\r_Digit_2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Digit_2[3]_i_1 
       (.I0(i_T_Digit_2[3]),
        .I1(i_Sel),
        .I2(i_SW_Digit_2[3]),
        .O(\r_Digit_2[3]_i_1_n_0 ));
  FDRE \r_Digit_2_reg[0] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_Digit_2[0]_i_1_n_0 ),
        .Q(o_Digit_2[0]),
        .R(1'b0));
  FDRE \r_Digit_2_reg[1] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_Digit_2[1]_i_1_n_0 ),
        .Q(o_Digit_2[1]),
        .R(1'b0));
  FDRE \r_Digit_2_reg[2] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_Digit_2[2]_i_1_n_0 ),
        .Q(o_Digit_2[2]),
        .R(1'b0));
  FDRE \r_Digit_2_reg[3] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_Digit_2[3]_i_1_n_0 ),
        .Q(o_Digit_2[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Digit_3[0]_i_1 
       (.I0(i_T_Digit_3[0]),
        .I1(i_Sel),
        .I2(i_SW_Digit_3[0]),
        .O(\r_Digit_3[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Digit_3[1]_i_1 
       (.I0(i_T_Digit_3[1]),
        .I1(i_Sel),
        .I2(i_SW_Digit_3[1]),
        .O(\r_Digit_3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Digit_3[2]_i_1 
       (.I0(i_T_Digit_3[2]),
        .I1(i_Sel),
        .I2(i_SW_Digit_3[2]),
        .O(\r_Digit_3[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Digit_3[3]_i_1 
       (.I0(i_T_Digit_3[3]),
        .I1(i_Sel),
        .I2(i_SW_Digit_3[3]),
        .O(\r_Digit_3[3]_i_1_n_0 ));
  FDRE \r_Digit_3_reg[0] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_Digit_3[0]_i_1_n_0 ),
        .Q(o_Digit_3[0]),
        .R(1'b0));
  FDRE \r_Digit_3_reg[1] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_Digit_3[1]_i_1_n_0 ),
        .Q(o_Digit_3[1]),
        .R(1'b0));
  FDRE \r_Digit_3_reg[2] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_Digit_3[2]_i_1_n_0 ),
        .Q(o_Digit_3[2]),
        .R(1'b0));
  FDRE \r_Digit_3_reg[3] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_Digit_3[3]_i_1_n_0 ),
        .Q(o_Digit_3[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Digit_4[0]_i_1 
       (.I0(i_T_Digit_4[0]),
        .I1(i_Sel),
        .I2(i_SW_Digit_4[0]),
        .O(\r_Digit_4[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Digit_4[1]_i_1 
       (.I0(i_T_Digit_4[1]),
        .I1(i_Sel),
        .I2(i_SW_Digit_4[1]),
        .O(\r_Digit_4[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Digit_4[2]_i_1 
       (.I0(i_T_Digit_4[2]),
        .I1(i_Sel),
        .I2(i_SW_Digit_4[2]),
        .O(\r_Digit_4[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Digit_4[3]_i_1 
       (.I0(i_T_Digit_4[3]),
        .I1(i_Sel),
        .I2(i_SW_Digit_4[3]),
        .O(\r_Digit_4[3]_i_1_n_0 ));
  FDRE \r_Digit_4_reg[0] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_Digit_4[0]_i_1_n_0 ),
        .Q(o_Digit_4[0]),
        .R(1'b0));
  FDRE \r_Digit_4_reg[1] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_Digit_4[1]_i_1_n_0 ),
        .Q(o_Digit_4[1]),
        .R(1'b0));
  FDRE \r_Digit_4_reg[2] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_Digit_4[2]_i_1_n_0 ),
        .Q(o_Digit_4[2]),
        .R(1'b0));
  FDRE \r_Digit_4_reg[3] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_Digit_4[3]_i_1_n_0 ),
        .Q(o_Digit_4[3]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "Reaction_Time_Averager_EXTRA_THICC_MUX_0_0,EXTRA_THICC_MUX,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "EXTRA_THICC_MUX,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_SW_Digit_1,
    i_SW_Digit_2,
    i_SW_Digit_3,
    i_SW_Digit_4,
    i_T_Digit_1,
    i_T_Digit_2,
    i_T_Digit_3,
    i_T_Digit_4,
    i_Sel,
    i_CLK,
    o_Digit_1,
    o_Digit_2,
    o_Digit_3,
    o_Digit_4);
  input [3:0]i_SW_Digit_1;
  input [3:0]i_SW_Digit_2;
  input [3:0]i_SW_Digit_3;
  input [3:0]i_SW_Digit_4;
  input [3:0]i_T_Digit_1;
  input [3:0]i_T_Digit_2;
  input [3:0]i_T_Digit_3;
  input [3:0]i_T_Digit_4;
  input i_Sel;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_i_CLK" *) input i_CLK;
  output [3:0]o_Digit_1;
  output [3:0]o_Digit_2;
  output [3:0]o_Digit_3;
  output [3:0]o_Digit_4;

  wire i_CLK;
  wire [3:0]i_SW_Digit_1;
  wire [3:0]i_SW_Digit_2;
  wire [3:0]i_SW_Digit_3;
  wire [3:0]i_SW_Digit_4;
  wire i_Sel;
  wire [3:0]i_T_Digit_1;
  wire [3:0]i_T_Digit_2;
  wire [3:0]i_T_Digit_3;
  wire [3:0]i_T_Digit_4;
  wire [3:0]o_Digit_1;
  wire [3:0]o_Digit_2;
  wire [3:0]o_Digit_3;
  wire [3:0]o_Digit_4;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_EXTRA_THICC_MUX inst
       (.i_CLK(i_CLK),
        .i_SW_Digit_1(i_SW_Digit_1),
        .i_SW_Digit_2(i_SW_Digit_2),
        .i_SW_Digit_3(i_SW_Digit_3),
        .i_SW_Digit_4(i_SW_Digit_4),
        .i_Sel(i_Sel),
        .i_T_Digit_1(i_T_Digit_1),
        .i_T_Digit_2(i_T_Digit_2),
        .i_T_Digit_3(i_T_Digit_3),
        .i_T_Digit_4(i_T_Digit_4),
        .o_Digit_1(o_Digit_1),
        .o_Digit_2(o_Digit_2),
        .o_Digit_3(o_Digit_3),
        .o_Digit_4(o_Digit_4));
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
