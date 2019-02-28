// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 23 13:11:18 2018
// Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_ssd_dec_0_0_sim_netlist.v
// Design      : Reaction_Time_Averager_ssd_dec_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Reaction_Time_Averager_ssd_dec_0_0,ssd_dec,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ssd_dec,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_CLK,
    i_Num,
    o_Cathodes);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_i_CLK" *) input i_CLK;
  input [3:0]i_Num;
  output [6:0]o_Cathodes;

  wire i_CLK;
  wire [3:0]i_Num;
  wire [6:0]o_Cathodes;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ssd_dec inst
       (.i_CLK(i_CLK),
        .i_Num(i_Num),
        .o_Cathodes(o_Cathodes));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ssd_dec
   (o_Cathodes,
    i_Num,
    i_CLK);
  output [6:0]o_Cathodes;
  input [3:0]i_Num;
  input i_CLK;

  wire i_CLK;
  wire [3:0]i_Num;
  wire [6:0]o_Cathodes;
  wire [6:0]r_Cathodes;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \r_Cathodes[0]_i_1 
       (.I0(i_Num[3]),
        .I1(i_Num[2]),
        .I2(i_Num[0]),
        .I3(i_Num[1]),
        .O(r_Cathodes[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \r_Cathodes[1]_i_1 
       (.I0(i_Num[3]),
        .I1(i_Num[2]),
        .I2(i_Num[1]),
        .I3(i_Num[0]),
        .O(r_Cathodes[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \r_Cathodes[2]_i_1 
       (.I0(i_Num[3]),
        .I1(i_Num[0]),
        .I2(i_Num[1]),
        .I3(i_Num[2]),
        .O(r_Cathodes[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \r_Cathodes[3]_i_1 
       (.I0(i_Num[3]),
        .I1(i_Num[2]),
        .I2(i_Num[0]),
        .I3(i_Num[1]),
        .O(r_Cathodes[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \r_Cathodes[4]_i_1 
       (.I0(i_Num[3]),
        .I1(i_Num[1]),
        .I2(i_Num[2]),
        .I3(i_Num[0]),
        .O(r_Cathodes[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \r_Cathodes[5]_i_1 
       (.I0(i_Num[3]),
        .I1(i_Num[2]),
        .I2(i_Num[0]),
        .I3(i_Num[1]),
        .O(r_Cathodes[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \r_Cathodes[6]_i_1 
       (.I0(i_Num[3]),
        .I1(i_Num[0]),
        .I2(i_Num[2]),
        .I3(i_Num[1]),
        .O(r_Cathodes[6]));
  FDRE \r_Cathodes_reg[0] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_Cathodes[0]),
        .Q(o_Cathodes[0]),
        .R(1'b0));
  FDRE \r_Cathodes_reg[1] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_Cathodes[1]),
        .Q(o_Cathodes[1]),
        .R(1'b0));
  FDRE \r_Cathodes_reg[2] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_Cathodes[2]),
        .Q(o_Cathodes[2]),
        .R(1'b0));
  FDRE \r_Cathodes_reg[3] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_Cathodes[3]),
        .Q(o_Cathodes[3]),
        .R(1'b0));
  FDRE \r_Cathodes_reg[4] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_Cathodes[4]),
        .Q(o_Cathodes[4]),
        .R(1'b0));
  FDRE \r_Cathodes_reg[5] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_Cathodes[5]),
        .Q(o_Cathodes[5]),
        .R(1'b0));
  FDRE \r_Cathodes_reg[6] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(r_Cathodes[6]),
        .Q(o_Cathodes[6]),
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
