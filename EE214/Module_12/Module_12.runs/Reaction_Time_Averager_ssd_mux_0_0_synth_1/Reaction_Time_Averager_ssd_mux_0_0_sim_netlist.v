// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 23 13:11:18 2018
// Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_ssd_mux_0_0_sim_netlist.v
// Design      : Reaction_Time_Averager_ssd_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Reaction_Time_Averager_ssd_mux_0_0,ssd_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ssd_mux,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_Digit_1,
    i_Digit_2,
    i_Digit_3,
    i_Digit_4,
    i_CLK,
    o_Out,
    o_Anodes);
  input [3:0]i_Digit_1;
  input [3:0]i_Digit_2;
  input [3:0]i_Digit_3;
  input [3:0]i_Digit_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_i_CLK" *) input i_CLK;
  output [3:0]o_Out;
  output [3:0]o_Anodes;

  wire i_CLK;
  wire [3:0]i_Digit_1;
  wire [3:0]i_Digit_2;
  wire [3:0]i_Digit_3;
  wire [3:0]i_Digit_4;
  wire [3:0]o_Anodes;
  wire [3:0]o_Out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ssd_mux inst
       (.i_CLK(i_CLK),
        .i_Digit_1(i_Digit_1),
        .i_Digit_2(i_Digit_2),
        .i_Digit_3(i_Digit_3),
        .i_Digit_4(i_Digit_4),
        .o_Anodes(o_Anodes),
        .o_Out(o_Out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ssd_mux
   (o_Anodes,
    o_Out,
    i_CLK,
    i_Digit_2,
    i_Digit_1,
    i_Digit_4,
    i_Digit_3);
  output [3:0]o_Anodes;
  output [3:0]o_Out;
  input i_CLK;
  input [3:0]i_Digit_2;
  input [3:0]i_Digit_1;
  input [3:0]i_Digit_4;
  input [3:0]i_Digit_3;

  wire i_CLK;
  wire [3:0]i_Digit_1;
  wire [3:0]i_Digit_2;
  wire [3:0]i_Digit_3;
  wire [3:0]i_Digit_4;
  wire [3:0]o_Anodes;
  wire [3:0]o_Out;
  wire [1:0]p_0_in;
  wire \r_SUBCLK[0]_i_2_n_0 ;
  wire \r_SUBCLK_reg[0]_i_1_n_0 ;
  wire \r_SUBCLK_reg[0]_i_1_n_1 ;
  wire \r_SUBCLK_reg[0]_i_1_n_2 ;
  wire \r_SUBCLK_reg[0]_i_1_n_3 ;
  wire \r_SUBCLK_reg[0]_i_1_n_4 ;
  wire \r_SUBCLK_reg[0]_i_1_n_5 ;
  wire \r_SUBCLK_reg[0]_i_1_n_6 ;
  wire \r_SUBCLK_reg[0]_i_1_n_7 ;
  wire \r_SUBCLK_reg[12]_i_1_n_0 ;
  wire \r_SUBCLK_reg[12]_i_1_n_1 ;
  wire \r_SUBCLK_reg[12]_i_1_n_2 ;
  wire \r_SUBCLK_reg[12]_i_1_n_3 ;
  wire \r_SUBCLK_reg[12]_i_1_n_4 ;
  wire \r_SUBCLK_reg[12]_i_1_n_5 ;
  wire \r_SUBCLK_reg[12]_i_1_n_6 ;
  wire \r_SUBCLK_reg[12]_i_1_n_7 ;
  wire \r_SUBCLK_reg[16]_i_1_n_3 ;
  wire \r_SUBCLK_reg[16]_i_1_n_6 ;
  wire \r_SUBCLK_reg[16]_i_1_n_7 ;
  wire \r_SUBCLK_reg[4]_i_1_n_0 ;
  wire \r_SUBCLK_reg[4]_i_1_n_1 ;
  wire \r_SUBCLK_reg[4]_i_1_n_2 ;
  wire \r_SUBCLK_reg[4]_i_1_n_3 ;
  wire \r_SUBCLK_reg[4]_i_1_n_4 ;
  wire \r_SUBCLK_reg[4]_i_1_n_5 ;
  wire \r_SUBCLK_reg[4]_i_1_n_6 ;
  wire \r_SUBCLK_reg[4]_i_1_n_7 ;
  wire \r_SUBCLK_reg[8]_i_1_n_0 ;
  wire \r_SUBCLK_reg[8]_i_1_n_1 ;
  wire \r_SUBCLK_reg[8]_i_1_n_2 ;
  wire \r_SUBCLK_reg[8]_i_1_n_3 ;
  wire \r_SUBCLK_reg[8]_i_1_n_4 ;
  wire \r_SUBCLK_reg[8]_i_1_n_5 ;
  wire \r_SUBCLK_reg[8]_i_1_n_6 ;
  wire \r_SUBCLK_reg[8]_i_1_n_7 ;
  wire \r_SUBCLK_reg_n_0_[0] ;
  wire \r_SUBCLK_reg_n_0_[10] ;
  wire \r_SUBCLK_reg_n_0_[11] ;
  wire \r_SUBCLK_reg_n_0_[12] ;
  wire \r_SUBCLK_reg_n_0_[13] ;
  wire \r_SUBCLK_reg_n_0_[14] ;
  wire \r_SUBCLK_reg_n_0_[15] ;
  wire \r_SUBCLK_reg_n_0_[1] ;
  wire \r_SUBCLK_reg_n_0_[2] ;
  wire \r_SUBCLK_reg_n_0_[3] ;
  wire \r_SUBCLK_reg_n_0_[4] ;
  wire \r_SUBCLK_reg_n_0_[5] ;
  wire \r_SUBCLK_reg_n_0_[6] ;
  wire \r_SUBCLK_reg_n_0_[7] ;
  wire \r_SUBCLK_reg_n_0_[8] ;
  wire \r_SUBCLK_reg_n_0_[9] ;
  wire [3:1]\NLW_r_SUBCLK_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_r_SUBCLK_reg[16]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \o_Anodes[0]_INST_0 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(o_Anodes[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_Anodes[1]_INST_0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(o_Anodes[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_Anodes[2]_INST_0 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(o_Anodes[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_Anodes[3]_INST_0 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(o_Anodes[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o_Out[0]_INST_0 
       (.I0(i_Digit_2[0]),
        .I1(i_Digit_1[0]),
        .I2(i_Digit_4[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(i_Digit_3[0]),
        .O(o_Out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o_Out[1]_INST_0 
       (.I0(i_Digit_2[1]),
        .I1(i_Digit_1[1]),
        .I2(i_Digit_4[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(i_Digit_3[1]),
        .O(o_Out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o_Out[2]_INST_0 
       (.I0(i_Digit_2[2]),
        .I1(i_Digit_1[2]),
        .I2(i_Digit_4[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(i_Digit_3[2]),
        .O(o_Out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o_Out[3]_INST_0 
       (.I0(i_Digit_2[3]),
        .I1(i_Digit_1[3]),
        .I2(i_Digit_4[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(i_Digit_3[3]),
        .O(o_Out[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \r_SUBCLK[0]_i_2 
       (.I0(\r_SUBCLK_reg_n_0_[0] ),
        .O(\r_SUBCLK[0]_i_2_n_0 ));
  FDRE \r_SUBCLK_reg[0] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[0]_i_1_n_7 ),
        .Q(\r_SUBCLK_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \r_SUBCLK_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\r_SUBCLK_reg[0]_i_1_n_0 ,\r_SUBCLK_reg[0]_i_1_n_1 ,\r_SUBCLK_reg[0]_i_1_n_2 ,\r_SUBCLK_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_SUBCLK_reg[0]_i_1_n_4 ,\r_SUBCLK_reg[0]_i_1_n_5 ,\r_SUBCLK_reg[0]_i_1_n_6 ,\r_SUBCLK_reg[0]_i_1_n_7 }),
        .S({\r_SUBCLK_reg_n_0_[3] ,\r_SUBCLK_reg_n_0_[2] ,\r_SUBCLK_reg_n_0_[1] ,\r_SUBCLK[0]_i_2_n_0 }));
  FDRE \r_SUBCLK_reg[10] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[8]_i_1_n_5 ),
        .Q(\r_SUBCLK_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \r_SUBCLK_reg[11] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[8]_i_1_n_4 ),
        .Q(\r_SUBCLK_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \r_SUBCLK_reg[12] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[12]_i_1_n_7 ),
        .Q(\r_SUBCLK_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \r_SUBCLK_reg[12]_i_1 
       (.CI(\r_SUBCLK_reg[8]_i_1_n_0 ),
        .CO({\r_SUBCLK_reg[12]_i_1_n_0 ,\r_SUBCLK_reg[12]_i_1_n_1 ,\r_SUBCLK_reg[12]_i_1_n_2 ,\r_SUBCLK_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_SUBCLK_reg[12]_i_1_n_4 ,\r_SUBCLK_reg[12]_i_1_n_5 ,\r_SUBCLK_reg[12]_i_1_n_6 ,\r_SUBCLK_reg[12]_i_1_n_7 }),
        .S({\r_SUBCLK_reg_n_0_[15] ,\r_SUBCLK_reg_n_0_[14] ,\r_SUBCLK_reg_n_0_[13] ,\r_SUBCLK_reg_n_0_[12] }));
  FDRE \r_SUBCLK_reg[13] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[12]_i_1_n_6 ),
        .Q(\r_SUBCLK_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \r_SUBCLK_reg[14] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[12]_i_1_n_5 ),
        .Q(\r_SUBCLK_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \r_SUBCLK_reg[15] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[12]_i_1_n_4 ),
        .Q(\r_SUBCLK_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \r_SUBCLK_reg[16] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[16]_i_1_n_7 ),
        .Q(p_0_in[0]),
        .R(1'b0));
  CARRY4 \r_SUBCLK_reg[16]_i_1 
       (.CI(\r_SUBCLK_reg[12]_i_1_n_0 ),
        .CO({\NLW_r_SUBCLK_reg[16]_i_1_CO_UNCONNECTED [3:1],\r_SUBCLK_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_SUBCLK_reg[16]_i_1_O_UNCONNECTED [3:2],\r_SUBCLK_reg[16]_i_1_n_6 ,\r_SUBCLK_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,p_0_in}));
  FDRE \r_SUBCLK_reg[17] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[16]_i_1_n_6 ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \r_SUBCLK_reg[1] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[0]_i_1_n_6 ),
        .Q(\r_SUBCLK_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \r_SUBCLK_reg[2] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[0]_i_1_n_5 ),
        .Q(\r_SUBCLK_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \r_SUBCLK_reg[3] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[0]_i_1_n_4 ),
        .Q(\r_SUBCLK_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \r_SUBCLK_reg[4] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[4]_i_1_n_7 ),
        .Q(\r_SUBCLK_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \r_SUBCLK_reg[4]_i_1 
       (.CI(\r_SUBCLK_reg[0]_i_1_n_0 ),
        .CO({\r_SUBCLK_reg[4]_i_1_n_0 ,\r_SUBCLK_reg[4]_i_1_n_1 ,\r_SUBCLK_reg[4]_i_1_n_2 ,\r_SUBCLK_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_SUBCLK_reg[4]_i_1_n_4 ,\r_SUBCLK_reg[4]_i_1_n_5 ,\r_SUBCLK_reg[4]_i_1_n_6 ,\r_SUBCLK_reg[4]_i_1_n_7 }),
        .S({\r_SUBCLK_reg_n_0_[7] ,\r_SUBCLK_reg_n_0_[6] ,\r_SUBCLK_reg_n_0_[5] ,\r_SUBCLK_reg_n_0_[4] }));
  FDRE \r_SUBCLK_reg[5] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[4]_i_1_n_6 ),
        .Q(\r_SUBCLK_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \r_SUBCLK_reg[6] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[4]_i_1_n_5 ),
        .Q(\r_SUBCLK_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \r_SUBCLK_reg[7] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[4]_i_1_n_4 ),
        .Q(\r_SUBCLK_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \r_SUBCLK_reg[8] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[8]_i_1_n_7 ),
        .Q(\r_SUBCLK_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \r_SUBCLK_reg[8]_i_1 
       (.CI(\r_SUBCLK_reg[4]_i_1_n_0 ),
        .CO({\r_SUBCLK_reg[8]_i_1_n_0 ,\r_SUBCLK_reg[8]_i_1_n_1 ,\r_SUBCLK_reg[8]_i_1_n_2 ,\r_SUBCLK_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_SUBCLK_reg[8]_i_1_n_4 ,\r_SUBCLK_reg[8]_i_1_n_5 ,\r_SUBCLK_reg[8]_i_1_n_6 ,\r_SUBCLK_reg[8]_i_1_n_7 }),
        .S({\r_SUBCLK_reg_n_0_[11] ,\r_SUBCLK_reg_n_0_[10] ,\r_SUBCLK_reg_n_0_[9] ,\r_SUBCLK_reg_n_0_[8] }));
  FDRE \r_SUBCLK_reg[9] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(\r_SUBCLK_reg[8]_i_1_n_6 ),
        .Q(\r_SUBCLK_reg_n_0_[9] ),
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
