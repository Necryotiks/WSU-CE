// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 23 13:13:34 2018
// Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Necryotiks/AppData/Roaming/SPB_Data/WSU-CPTE/Module_12/Module_12.srcs/sources_1/bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_Divider_0_0/Reaction_Time_Averager_Divider_0_0_sim_netlist.v
// Design      : Reaction_Time_Averager_Divider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Reaction_Time_Averager_Divider_0_0,Divider,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Divider,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module Reaction_Time_Averager_Divider_0_0
   (i_CLK,
    i_TC,
    i_DATA,
    o_OUT);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_CLK, FREQ_HZ 100000000, PHASE 0.000" *) input i_CLK;
  input [2:0]i_TC;
  input [13:0]i_DATA;
  output [13:0]o_OUT;

  wire i_CLK;
  wire [13:0]i_DATA;
  wire [2:0]i_TC;
  wire [13:0]o_OUT;

  Reaction_Time_Averager_Divider_0_0_Divider inst
       (.i_CLK(i_CLK),
        .i_DATA(i_DATA),
        .i_TC(i_TC),
        .o_OUT(o_OUT));
endmodule

(* ORIG_REF_NAME = "Divider" *) 
module Reaction_Time_Averager_Divider_0_0_Divider
   (o_OUT,
    i_TC,
    i_DATA,
    i_CLK);
  output [13:0]o_OUT;
  input [2:0]i_TC;
  input [13:0]i_DATA;
  input i_CLK;

  wire i_CLK;
  wire [13:0]i_DATA;
  wire [2:0]i_TC;
  wire [13:0]o_OUT;
  wire [13:0]p_0_out;
  wire \r_OUT[0]_i_2_n_0 ;
  wire \r_OUT[0]_i_3_n_0 ;
  wire \r_OUT[10]_i_2_n_0 ;
  wire \r_OUT[10]_i_3_n_0 ;
  wire \r_OUT[1]_i_2_n_0 ;
  wire \r_OUT[1]_i_3_n_0 ;
  wire \r_OUT[2]_i_2_n_0 ;
  wire \r_OUT[2]_i_3_n_0 ;
  wire \r_OUT[3]_i_2_n_0 ;
  wire \r_OUT[3]_i_3_n_0 ;
  wire \r_OUT[4]_i_2_n_0 ;
  wire \r_OUT[4]_i_3_n_0 ;
  wire \r_OUT[5]_i_2_n_0 ;
  wire \r_OUT[5]_i_3_n_0 ;
  wire \r_OUT[6]_i_2_n_0 ;
  wire \r_OUT[6]_i_3_n_0 ;
  wire \r_OUT[7]_i_2_n_0 ;
  wire \r_OUT[7]_i_3_n_0 ;
  wire \r_OUT[8]_i_2_n_0 ;
  wire \r_OUT[8]_i_3_n_0 ;
  wire \r_OUT[9]_i_2_n_0 ;
  wire \r_OUT[9]_i_3_n_0 ;

  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \r_OUT[0]_i_2 
       (.I0(i_DATA[1]),
        .I1(i_TC[1]),
        .I2(i_DATA[2]),
        .I3(i_TC[2]),
        .I4(i_DATA[0]),
        .O(\r_OUT[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \r_OUT[0]_i_3 
       (.I0(i_DATA[0]),
        .I1(i_TC[1]),
        .I2(i_TC[2]),
        .I3(i_DATA[3]),
        .O(\r_OUT[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \r_OUT[10]_i_2 
       (.I0(i_DATA[11]),
        .I1(i_TC[1]),
        .I2(i_DATA[12]),
        .I3(i_TC[2]),
        .I4(i_DATA[10]),
        .O(\r_OUT[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \r_OUT[10]_i_3 
       (.I0(i_DATA[10]),
        .I1(i_TC[1]),
        .I2(i_TC[2]),
        .I3(i_DATA[13]),
        .O(\r_OUT[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5F5AEFEF05004040)) 
    \r_OUT[11]_i_1 
       (.I0(i_TC[0]),
        .I1(i_DATA[12]),
        .I2(i_TC[1]),
        .I3(i_DATA[13]),
        .I4(i_TC[2]),
        .I5(i_DATA[11]),
        .O(p_0_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h22AAB822)) 
    \r_OUT[12]_i_1 
       (.I0(i_DATA[12]),
        .I1(i_TC[2]),
        .I2(i_DATA[13]),
        .I3(i_TC[1]),
        .I4(i_TC[0]),
        .O(p_0_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2A82)) 
    \r_OUT[13]_i_1 
       (.I0(i_DATA[13]),
        .I1(i_TC[2]),
        .I2(i_TC[1]),
        .I3(i_TC[0]),
        .O(p_0_out[13]));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \r_OUT[1]_i_2 
       (.I0(i_DATA[2]),
        .I1(i_TC[1]),
        .I2(i_DATA[3]),
        .I3(i_TC[2]),
        .I4(i_DATA[1]),
        .O(\r_OUT[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \r_OUT[1]_i_3 
       (.I0(i_DATA[1]),
        .I1(i_TC[1]),
        .I2(i_TC[2]),
        .I3(i_DATA[4]),
        .O(\r_OUT[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \r_OUT[2]_i_2 
       (.I0(i_DATA[3]),
        .I1(i_TC[1]),
        .I2(i_DATA[4]),
        .I3(i_TC[2]),
        .I4(i_DATA[2]),
        .O(\r_OUT[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \r_OUT[2]_i_3 
       (.I0(i_DATA[2]),
        .I1(i_TC[1]),
        .I2(i_TC[2]),
        .I3(i_DATA[5]),
        .O(\r_OUT[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \r_OUT[3]_i_2 
       (.I0(i_DATA[4]),
        .I1(i_TC[1]),
        .I2(i_DATA[5]),
        .I3(i_TC[2]),
        .I4(i_DATA[3]),
        .O(\r_OUT[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \r_OUT[3]_i_3 
       (.I0(i_DATA[3]),
        .I1(i_TC[1]),
        .I2(i_TC[2]),
        .I3(i_DATA[6]),
        .O(\r_OUT[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \r_OUT[4]_i_2 
       (.I0(i_DATA[5]),
        .I1(i_TC[1]),
        .I2(i_DATA[6]),
        .I3(i_TC[2]),
        .I4(i_DATA[4]),
        .O(\r_OUT[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \r_OUT[4]_i_3 
       (.I0(i_DATA[4]),
        .I1(i_TC[1]),
        .I2(i_TC[2]),
        .I3(i_DATA[7]),
        .O(\r_OUT[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \r_OUT[5]_i_2 
       (.I0(i_DATA[6]),
        .I1(i_TC[1]),
        .I2(i_DATA[7]),
        .I3(i_TC[2]),
        .I4(i_DATA[5]),
        .O(\r_OUT[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \r_OUT[5]_i_3 
       (.I0(i_DATA[5]),
        .I1(i_TC[1]),
        .I2(i_TC[2]),
        .I3(i_DATA[8]),
        .O(\r_OUT[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \r_OUT[6]_i_2 
       (.I0(i_DATA[7]),
        .I1(i_TC[1]),
        .I2(i_DATA[8]),
        .I3(i_TC[2]),
        .I4(i_DATA[6]),
        .O(\r_OUT[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \r_OUT[6]_i_3 
       (.I0(i_DATA[6]),
        .I1(i_TC[1]),
        .I2(i_TC[2]),
        .I3(i_DATA[9]),
        .O(\r_OUT[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \r_OUT[7]_i_2 
       (.I0(i_DATA[8]),
        .I1(i_TC[1]),
        .I2(i_DATA[9]),
        .I3(i_TC[2]),
        .I4(i_DATA[7]),
        .O(\r_OUT[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \r_OUT[7]_i_3 
       (.I0(i_DATA[7]),
        .I1(i_TC[1]),
        .I2(i_TC[2]),
        .I3(i_DATA[10]),
        .O(\r_OUT[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \r_OUT[8]_i_2 
       (.I0(i_DATA[9]),
        .I1(i_TC[1]),
        .I2(i_DATA[10]),
        .I3(i_TC[2]),
        .I4(i_DATA[8]),
        .O(\r_OUT[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \r_OUT[8]_i_3 
       (.I0(i_DATA[8]),
        .I1(i_TC[1]),
        .I2(i_TC[2]),
        .I3(i_DATA[11]),
        .O(\r_OUT[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \r_OUT[9]_i_2 
       (.I0(i_DATA[10]),
        .I1(i_TC[1]),
        .I2(i_DATA[11]),
        .I3(i_TC[2]),
        .I4(i_DATA[9]),
        .O(\r_OUT[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \r_OUT[9]_i_3 
       (.I0(i_DATA[9]),
        .I1(i_TC[1]),
        .I2(i_TC[2]),
        .I3(i_DATA[12]),
        .O(\r_OUT[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_OUT_reg[0] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(o_OUT[0]),
        .R(1'b0));
  MUXF7 \r_OUT_reg[0]_i_1 
       (.I0(\r_OUT[0]_i_2_n_0 ),
        .I1(\r_OUT[0]_i_3_n_0 ),
        .O(p_0_out[0]),
        .S(i_TC[0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_OUT_reg[10] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(p_0_out[10]),
        .Q(o_OUT[10]),
        .R(1'b0));
  MUXF7 \r_OUT_reg[10]_i_1 
       (.I0(\r_OUT[10]_i_2_n_0 ),
        .I1(\r_OUT[10]_i_3_n_0 ),
        .O(p_0_out[10]),
        .S(i_TC[0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_OUT_reg[11] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(p_0_out[11]),
        .Q(o_OUT[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_OUT_reg[12] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(p_0_out[12]),
        .Q(o_OUT[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_OUT_reg[13] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(p_0_out[13]),
        .Q(o_OUT[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_OUT_reg[1] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(o_OUT[1]),
        .R(1'b0));
  MUXF7 \r_OUT_reg[1]_i_1 
       (.I0(\r_OUT[1]_i_2_n_0 ),
        .I1(\r_OUT[1]_i_3_n_0 ),
        .O(p_0_out[1]),
        .S(i_TC[0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_OUT_reg[2] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(p_0_out[2]),
        .Q(o_OUT[2]),
        .R(1'b0));
  MUXF7 \r_OUT_reg[2]_i_1 
       (.I0(\r_OUT[2]_i_2_n_0 ),
        .I1(\r_OUT[2]_i_3_n_0 ),
        .O(p_0_out[2]),
        .S(i_TC[0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_OUT_reg[3] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(p_0_out[3]),
        .Q(o_OUT[3]),
        .R(1'b0));
  MUXF7 \r_OUT_reg[3]_i_1 
       (.I0(\r_OUT[3]_i_2_n_0 ),
        .I1(\r_OUT[3]_i_3_n_0 ),
        .O(p_0_out[3]),
        .S(i_TC[0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_OUT_reg[4] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(p_0_out[4]),
        .Q(o_OUT[4]),
        .R(1'b0));
  MUXF7 \r_OUT_reg[4]_i_1 
       (.I0(\r_OUT[4]_i_2_n_0 ),
        .I1(\r_OUT[4]_i_3_n_0 ),
        .O(p_0_out[4]),
        .S(i_TC[0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_OUT_reg[5] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(p_0_out[5]),
        .Q(o_OUT[5]),
        .R(1'b0));
  MUXF7 \r_OUT_reg[5]_i_1 
       (.I0(\r_OUT[5]_i_2_n_0 ),
        .I1(\r_OUT[5]_i_3_n_0 ),
        .O(p_0_out[5]),
        .S(i_TC[0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_OUT_reg[6] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(p_0_out[6]),
        .Q(o_OUT[6]),
        .R(1'b0));
  MUXF7 \r_OUT_reg[6]_i_1 
       (.I0(\r_OUT[6]_i_2_n_0 ),
        .I1(\r_OUT[6]_i_3_n_0 ),
        .O(p_0_out[6]),
        .S(i_TC[0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_OUT_reg[7] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(p_0_out[7]),
        .Q(o_OUT[7]),
        .R(1'b0));
  MUXF7 \r_OUT_reg[7]_i_1 
       (.I0(\r_OUT[7]_i_2_n_0 ),
        .I1(\r_OUT[7]_i_3_n_0 ),
        .O(p_0_out[7]),
        .S(i_TC[0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_OUT_reg[8] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(p_0_out[8]),
        .Q(o_OUT[8]),
        .R(1'b0));
  MUXF7 \r_OUT_reg[8]_i_1 
       (.I0(\r_OUT[8]_i_2_n_0 ),
        .I1(\r_OUT[8]_i_3_n_0 ),
        .O(p_0_out[8]),
        .S(i_TC[0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_OUT_reg[9] 
       (.C(i_CLK),
        .CE(1'b1),
        .D(p_0_out[9]),
        .Q(o_OUT[9]),
        .R(1'b0));
  MUXF7 \r_OUT_reg[9]_i_1 
       (.I0(\r_OUT[9]_i_2_n_0 ),
        .I1(\r_OUT[9]_i_3_n_0 ),
        .O(p_0_out[9]),
        .S(i_TC[0]));
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
