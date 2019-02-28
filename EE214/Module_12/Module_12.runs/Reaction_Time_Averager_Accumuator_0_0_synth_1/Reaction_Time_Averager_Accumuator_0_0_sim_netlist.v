// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 23 13:11:18 2018
// Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_Accumuator_0_0_sim_netlist.v
// Design      : Reaction_Time_Averager_Accumuator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Accumuator
   (o_OUT,
    i_CLK_EN,
    i_CLK,
    i_RST,
    i_DATA);
  output [13:0]o_OUT;
  input i_CLK_EN;
  input i_CLK;
  input i_RST;
  input [13:0]i_DATA;

  wire i_CLK;
  wire i_CLK_EN;
  wire [13:0]i_DATA;
  wire i_RST;
  wire [13:0]o_OUT;
  wire \r_OUT[11]_i_2_n_0 ;
  wire \r_OUT[11]_i_3_n_0 ;
  wire \r_OUT[11]_i_4_n_0 ;
  wire \r_OUT[11]_i_5_n_0 ;
  wire \r_OUT[13]_i_2_n_0 ;
  wire \r_OUT[13]_i_3_n_0 ;
  wire \r_OUT[3]_i_2_n_0 ;
  wire \r_OUT[3]_i_3_n_0 ;
  wire \r_OUT[3]_i_4_n_0 ;
  wire \r_OUT[3]_i_5_n_0 ;
  wire \r_OUT[7]_i_2_n_0 ;
  wire \r_OUT[7]_i_3_n_0 ;
  wire \r_OUT[7]_i_4_n_0 ;
  wire \r_OUT[7]_i_5_n_0 ;
  wire \r_OUT_reg[11]_i_1_n_0 ;
  wire \r_OUT_reg[11]_i_1_n_1 ;
  wire \r_OUT_reg[11]_i_1_n_2 ;
  wire \r_OUT_reg[11]_i_1_n_3 ;
  wire \r_OUT_reg[11]_i_1_n_4 ;
  wire \r_OUT_reg[11]_i_1_n_5 ;
  wire \r_OUT_reg[11]_i_1_n_6 ;
  wire \r_OUT_reg[11]_i_1_n_7 ;
  wire \r_OUT_reg[13]_i_1_n_3 ;
  wire \r_OUT_reg[13]_i_1_n_6 ;
  wire \r_OUT_reg[13]_i_1_n_7 ;
  wire \r_OUT_reg[3]_i_1_n_0 ;
  wire \r_OUT_reg[3]_i_1_n_1 ;
  wire \r_OUT_reg[3]_i_1_n_2 ;
  wire \r_OUT_reg[3]_i_1_n_3 ;
  wire \r_OUT_reg[3]_i_1_n_4 ;
  wire \r_OUT_reg[3]_i_1_n_5 ;
  wire \r_OUT_reg[3]_i_1_n_6 ;
  wire \r_OUT_reg[3]_i_1_n_7 ;
  wire \r_OUT_reg[7]_i_1_n_0 ;
  wire \r_OUT_reg[7]_i_1_n_1 ;
  wire \r_OUT_reg[7]_i_1_n_2 ;
  wire \r_OUT_reg[7]_i_1_n_3 ;
  wire \r_OUT_reg[7]_i_1_n_4 ;
  wire \r_OUT_reg[7]_i_1_n_5 ;
  wire \r_OUT_reg[7]_i_1_n_6 ;
  wire \r_OUT_reg[7]_i_1_n_7 ;
  wire [3:1]\NLW_r_OUT_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_r_OUT_reg[13]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \r_OUT[11]_i_2 
       (.I0(i_DATA[11]),
        .I1(o_OUT[11]),
        .O(\r_OUT[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_OUT[11]_i_3 
       (.I0(i_DATA[10]),
        .I1(o_OUT[10]),
        .O(\r_OUT[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_OUT[11]_i_4 
       (.I0(i_DATA[9]),
        .I1(o_OUT[9]),
        .O(\r_OUT[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_OUT[11]_i_5 
       (.I0(i_DATA[8]),
        .I1(o_OUT[8]),
        .O(\r_OUT[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_OUT[13]_i_2 
       (.I0(i_DATA[13]),
        .I1(o_OUT[13]),
        .O(\r_OUT[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_OUT[13]_i_3 
       (.I0(i_DATA[12]),
        .I1(o_OUT[12]),
        .O(\r_OUT[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_OUT[3]_i_2 
       (.I0(i_DATA[3]),
        .I1(o_OUT[3]),
        .O(\r_OUT[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_OUT[3]_i_3 
       (.I0(i_DATA[2]),
        .I1(o_OUT[2]),
        .O(\r_OUT[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_OUT[3]_i_4 
       (.I0(i_DATA[1]),
        .I1(o_OUT[1]),
        .O(\r_OUT[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_OUT[3]_i_5 
       (.I0(i_DATA[0]),
        .I1(o_OUT[0]),
        .O(\r_OUT[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_OUT[7]_i_2 
       (.I0(i_DATA[7]),
        .I1(o_OUT[7]),
        .O(\r_OUT[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_OUT[7]_i_3 
       (.I0(i_DATA[6]),
        .I1(o_OUT[6]),
        .O(\r_OUT[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_OUT[7]_i_4 
       (.I0(i_DATA[5]),
        .I1(o_OUT[5]),
        .O(\r_OUT[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_OUT[7]_i_5 
       (.I0(i_DATA[4]),
        .I1(o_OUT[4]),
        .O(\r_OUT[7]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_OUT_reg[0] 
       (.C(i_CLK),
        .CE(i_CLK_EN),
        .CLR(i_RST),
        .D(\r_OUT_reg[3]_i_1_n_7 ),
        .Q(o_OUT[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_OUT_reg[10] 
       (.C(i_CLK),
        .CE(i_CLK_EN),
        .CLR(i_RST),
        .D(\r_OUT_reg[11]_i_1_n_5 ),
        .Q(o_OUT[10]));
  FDCE #(
    .INIT(1'b0)) 
    \r_OUT_reg[11] 
       (.C(i_CLK),
        .CE(i_CLK_EN),
        .CLR(i_RST),
        .D(\r_OUT_reg[11]_i_1_n_4 ),
        .Q(o_OUT[11]));
  CARRY4 \r_OUT_reg[11]_i_1 
       (.CI(\r_OUT_reg[7]_i_1_n_0 ),
        .CO({\r_OUT_reg[11]_i_1_n_0 ,\r_OUT_reg[11]_i_1_n_1 ,\r_OUT_reg[11]_i_1_n_2 ,\r_OUT_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_DATA[11:8]),
        .O({\r_OUT_reg[11]_i_1_n_4 ,\r_OUT_reg[11]_i_1_n_5 ,\r_OUT_reg[11]_i_1_n_6 ,\r_OUT_reg[11]_i_1_n_7 }),
        .S({\r_OUT[11]_i_2_n_0 ,\r_OUT[11]_i_3_n_0 ,\r_OUT[11]_i_4_n_0 ,\r_OUT[11]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \r_OUT_reg[12] 
       (.C(i_CLK),
        .CE(i_CLK_EN),
        .CLR(i_RST),
        .D(\r_OUT_reg[13]_i_1_n_7 ),
        .Q(o_OUT[12]));
  FDCE #(
    .INIT(1'b0)) 
    \r_OUT_reg[13] 
       (.C(i_CLK),
        .CE(i_CLK_EN),
        .CLR(i_RST),
        .D(\r_OUT_reg[13]_i_1_n_6 ),
        .Q(o_OUT[13]));
  CARRY4 \r_OUT_reg[13]_i_1 
       (.CI(\r_OUT_reg[11]_i_1_n_0 ),
        .CO({\NLW_r_OUT_reg[13]_i_1_CO_UNCONNECTED [3:1],\r_OUT_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i_DATA[12]}),
        .O({\NLW_r_OUT_reg[13]_i_1_O_UNCONNECTED [3:2],\r_OUT_reg[13]_i_1_n_6 ,\r_OUT_reg[13]_i_1_n_7 }),
        .S({1'b0,1'b0,\r_OUT[13]_i_2_n_0 ,\r_OUT[13]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \r_OUT_reg[1] 
       (.C(i_CLK),
        .CE(i_CLK_EN),
        .CLR(i_RST),
        .D(\r_OUT_reg[3]_i_1_n_6 ),
        .Q(o_OUT[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_OUT_reg[2] 
       (.C(i_CLK),
        .CE(i_CLK_EN),
        .CLR(i_RST),
        .D(\r_OUT_reg[3]_i_1_n_5 ),
        .Q(o_OUT[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_OUT_reg[3] 
       (.C(i_CLK),
        .CE(i_CLK_EN),
        .CLR(i_RST),
        .D(\r_OUT_reg[3]_i_1_n_4 ),
        .Q(o_OUT[3]));
  CARRY4 \r_OUT_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\r_OUT_reg[3]_i_1_n_0 ,\r_OUT_reg[3]_i_1_n_1 ,\r_OUT_reg[3]_i_1_n_2 ,\r_OUT_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_DATA[3:0]),
        .O({\r_OUT_reg[3]_i_1_n_4 ,\r_OUT_reg[3]_i_1_n_5 ,\r_OUT_reg[3]_i_1_n_6 ,\r_OUT_reg[3]_i_1_n_7 }),
        .S({\r_OUT[3]_i_2_n_0 ,\r_OUT[3]_i_3_n_0 ,\r_OUT[3]_i_4_n_0 ,\r_OUT[3]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \r_OUT_reg[4] 
       (.C(i_CLK),
        .CE(i_CLK_EN),
        .CLR(i_RST),
        .D(\r_OUT_reg[7]_i_1_n_7 ),
        .Q(o_OUT[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_OUT_reg[5] 
       (.C(i_CLK),
        .CE(i_CLK_EN),
        .CLR(i_RST),
        .D(\r_OUT_reg[7]_i_1_n_6 ),
        .Q(o_OUT[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_OUT_reg[6] 
       (.C(i_CLK),
        .CE(i_CLK_EN),
        .CLR(i_RST),
        .D(\r_OUT_reg[7]_i_1_n_5 ),
        .Q(o_OUT[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_OUT_reg[7] 
       (.C(i_CLK),
        .CE(i_CLK_EN),
        .CLR(i_RST),
        .D(\r_OUT_reg[7]_i_1_n_4 ),
        .Q(o_OUT[7]));
  CARRY4 \r_OUT_reg[7]_i_1 
       (.CI(\r_OUT_reg[3]_i_1_n_0 ),
        .CO({\r_OUT_reg[7]_i_1_n_0 ,\r_OUT_reg[7]_i_1_n_1 ,\r_OUT_reg[7]_i_1_n_2 ,\r_OUT_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_DATA[7:4]),
        .O({\r_OUT_reg[7]_i_1_n_4 ,\r_OUT_reg[7]_i_1_n_5 ,\r_OUT_reg[7]_i_1_n_6 ,\r_OUT_reg[7]_i_1_n_7 }),
        .S({\r_OUT[7]_i_2_n_0 ,\r_OUT[7]_i_3_n_0 ,\r_OUT[7]_i_4_n_0 ,\r_OUT[7]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \r_OUT_reg[8] 
       (.C(i_CLK),
        .CE(i_CLK_EN),
        .CLR(i_RST),
        .D(\r_OUT_reg[11]_i_1_n_7 ),
        .Q(o_OUT[8]));
  FDCE #(
    .INIT(1'b0)) 
    \r_OUT_reg[9] 
       (.C(i_CLK),
        .CE(i_CLK_EN),
        .CLR(i_RST),
        .D(\r_OUT_reg[11]_i_1_n_6 ),
        .Q(o_OUT[9]));
endmodule

(* CHECK_LICENSE_TYPE = "Reaction_Time_Averager_Accumuator_0_0,Accumuator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Accumuator,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_CLK,
    i_CLK_EN,
    i_RST,
    i_DATA,
    o_OUT);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_CLK, ASSOCIATED_RESET i_RST, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_i_CLK" *) input i_CLK;
  input i_CLK_EN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_RST, POLARITY ACTIVE_LOW" *) input i_RST;
  input [13:0]i_DATA;
  output [13:0]o_OUT;

  wire i_CLK;
  wire i_CLK_EN;
  wire [13:0]i_DATA;
  wire i_RST;
  wire [13:0]o_OUT;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Accumuator inst
       (.i_CLK(i_CLK),
        .i_CLK_EN(i_CLK_EN),
        .i_DATA(i_DATA),
        .i_RST(i_RST),
        .o_OUT(o_OUT));
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
