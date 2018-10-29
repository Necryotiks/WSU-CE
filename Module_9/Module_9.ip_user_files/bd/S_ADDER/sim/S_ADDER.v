//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Oct 29 16:01:07 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target S_ADDER.bd
//Design      : S_ADDER
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "S_ADDER,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=S_ADDER,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=4,synth_mode=Global}" *) (* HW_HANDOFF = "S_ADDER.hwdef" *) 
module S_ADDER
   (i_CLK,
    i_LD_0,
    i_SW,
    i_Sub,
    o_Anodes,
    o_Carry,
    o_Cathode);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, CLK_DOMAIN S_ADDER_i_CLK, FREQ_HZ 100000000, PHASE 0.000" *) input i_CLK;
  input i_LD_0;
  input [7:0]i_SW;
  input i_Sub;
  output [3:0]o_Anodes;
  output o_Carry;
  output [6:0]o_Cathode;

  wire [7:0]PIPO_0_o_Out;
  wire SubAdder_0_o_Carry;
  wire [7:0]SubAdder_0_o_Sum;
  wire i_BTN_0_1;
  wire i_CLK_0_1;
  wire [7:0]i_SW_1;
  wire i_Sub_0_1;
  wire [6:0]ssd_dec_0_cathode;
  wire [3:0]ssd_mux_0_an;
  wire [3:0]ssd_mux_0_o_Out;
  wire [3:0]xlslice_0_Dout;
  wire [3:0]xlslice_1_Dout;

  assign i_BTN_0_1 = i_LD_0;
  assign i_CLK_0_1 = i_CLK;
  assign i_SW_1 = i_SW[7:0];
  assign i_Sub_0_1 = i_Sub;
  assign o_Anodes[3:0] = ssd_mux_0_an;
  assign o_Carry = SubAdder_0_o_Carry;
  assign o_Cathode[6:0] = ssd_dec_0_cathode;
  S_ADDER_PIPO_0_0 PIPO_0
       (.i_BTN(i_BTN_0_1),
        .i_CLK(i_CLK_0_1),
        .i_SW(i_SW_1),
        .o_Out(PIPO_0_o_Out));
  S_ADDER_SubAdder_0_1 SubAdder_0
       (.i_A(i_SW_1),
        .i_B(PIPO_0_o_Out),
        .i_Sub(i_Sub_0_1),
        .o_Carry(SubAdder_0_o_Carry),
        .o_Sum(SubAdder_0_o_Sum));
  S_ADDER_ssd_dec_0_0 ssd_dec_0
       (.cathode(ssd_dec_0_cathode),
        .i_CLK(i_CLK_0_1),
        .i_Num(ssd_mux_0_o_Out));
  S_ADDER_ssd_mux_0_0 ssd_mux_0
       (.an(ssd_mux_0_an),
        .i_CLK(i_CLK_0_1),
        .i_Digit_1({1'b0,1'b0,1'b0,1'b0}),
        .i_Digit_2({1'b0,1'b0,1'b0,1'b0}),
        .i_Digit_3(xlslice_1_Dout),
        .i_Digit_4(xlslice_0_Dout),
        .o_Out(ssd_mux_0_o_Out));
  S_ADDER_xlslice_0_0 xlslice_0
       (.Din(SubAdder_0_o_Sum),
        .Dout(xlslice_0_Dout));
  S_ADDER_xlslice_1_0 xlslice_1
       (.Din(SubAdder_0_o_Sum),
        .Dout(xlslice_1_Dout));
endmodule
