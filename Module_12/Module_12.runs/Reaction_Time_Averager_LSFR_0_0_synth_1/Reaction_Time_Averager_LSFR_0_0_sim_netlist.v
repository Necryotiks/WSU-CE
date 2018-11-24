// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 23 13:11:18 2018
// Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_LSFR_0_0_sim_netlist.v
// Design      : Reaction_Time_Averager_LSFR_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LSFR
   (o_OUT,
    i_EN,
    i_CLK,
    i_RST);
  output [12:0]o_OUT;
  input i_EN;
  input i_CLK;
  input i_RST;

  wire i_CLK;
  wire i_EN;
  wire i_RST;
  wire [12:0]o_OUT;
  wire [0:0]p_0_out__0;

  LUT4 #(
    .INIT(16'h6996)) 
    p_0_out
       (.I0(o_OUT[10]),
        .I1(o_OUT[11]),
        .I2(o_OUT[12]),
        .I3(o_OUT[7]),
        .O(p_0_out__0));
  FDPE \r_OUT_reg[0] 
       (.C(i_CLK),
        .CE(i_EN),
        .D(p_0_out__0),
        .PRE(i_RST),
        .Q(o_OUT[0]));
  FDCE \r_OUT_reg[10] 
       (.C(i_CLK),
        .CE(i_EN),
        .CLR(i_RST),
        .D(o_OUT[9]),
        .Q(o_OUT[10]));
  FDCE \r_OUT_reg[11] 
       (.C(i_CLK),
        .CE(i_EN),
        .CLR(i_RST),
        .D(o_OUT[10]),
        .Q(o_OUT[11]));
  FDCE \r_OUT_reg[12] 
       (.C(i_CLK),
        .CE(i_EN),
        .CLR(i_RST),
        .D(o_OUT[11]),
        .Q(o_OUT[12]));
  FDCE \r_OUT_reg[1] 
       (.C(i_CLK),
        .CE(i_EN),
        .CLR(i_RST),
        .D(o_OUT[0]),
        .Q(o_OUT[1]));
  FDCE \r_OUT_reg[2] 
       (.C(i_CLK),
        .CE(i_EN),
        .CLR(i_RST),
        .D(o_OUT[1]),
        .Q(o_OUT[2]));
  FDCE \r_OUT_reg[3] 
       (.C(i_CLK),
        .CE(i_EN),
        .CLR(i_RST),
        .D(o_OUT[2]),
        .Q(o_OUT[3]));
  FDCE \r_OUT_reg[4] 
       (.C(i_CLK),
        .CE(i_EN),
        .CLR(i_RST),
        .D(o_OUT[3]),
        .Q(o_OUT[4]));
  FDCE \r_OUT_reg[5] 
       (.C(i_CLK),
        .CE(i_EN),
        .CLR(i_RST),
        .D(o_OUT[4]),
        .Q(o_OUT[5]));
  FDCE \r_OUT_reg[6] 
       (.C(i_CLK),
        .CE(i_EN),
        .CLR(i_RST),
        .D(o_OUT[5]),
        .Q(o_OUT[6]));
  FDCE \r_OUT_reg[7] 
       (.C(i_CLK),
        .CE(i_EN),
        .CLR(i_RST),
        .D(o_OUT[6]),
        .Q(o_OUT[7]));
  FDCE \r_OUT_reg[8] 
       (.C(i_CLK),
        .CE(i_EN),
        .CLR(i_RST),
        .D(o_OUT[7]),
        .Q(o_OUT[8]));
  FDCE \r_OUT_reg[9] 
       (.C(i_CLK),
        .CE(i_EN),
        .CLR(i_RST),
        .D(o_OUT[8]),
        .Q(o_OUT[9]));
endmodule

(* CHECK_LICENSE_TYPE = "Reaction_Time_Averager_LSFR_0_0,LSFR,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "LSFR,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_CLK,
    i_RST,
    i_EN,
    o_OUT);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_CLK, ASSOCIATED_RESET i_RST, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_i_CLK" *) input i_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_RST, POLARITY ACTIVE_LOW" *) input i_RST;
  input i_EN;
  output [12:0]o_OUT;

  wire i_CLK;
  wire i_EN;
  wire i_RST;
  wire [12:0]o_OUT;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LSFR inst
       (.i_CLK(i_CLK),
        .i_EN(i_EN),
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
