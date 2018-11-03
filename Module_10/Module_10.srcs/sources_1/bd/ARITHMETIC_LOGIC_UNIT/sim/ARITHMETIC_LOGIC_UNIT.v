//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sat Nov  3 01:15:05 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target ARITHMETIC_LOGIC_UNIT.bd
//Design      : ARITHMETIC_LOGIC_UNIT
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ARITHMETIC_LOGIC_UNIT,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ARITHMETIC_LOGIC_UNIT,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=4,synth_mode=Global}" *) (* HW_HANDOFF = "ARITHMETIC_LOGIC_UNIT.hwdef" *) 
module ARITHMETIC_LOGIC_UNIT
   (i_CLK,
    i_LD_0,
    i_LD_1,
    i_SW,
    o_Anodes,
    o_Cathodes,
    o_Status);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, CLK_DOMAIN ARITHMETIC_LOGIC_UNIT_clk_100MHz, FREQ_HZ 100000000, PHASE 0.000" *) input i_CLK;
  input i_LD_0;
  input i_LD_1;
  input [7:0]i_SW;
  output [3:0]o_Anodes;
  output [6:0]o_Cathodes;
  output [3:0]o_Status;

  wire [7:0]ALU_0_o_Out;
  wire [3:0]ALU_0_o_Status;
  wire [7:0]PIPO_0_o_Out;
  wire [7:0]PIPO_1_o_Out;
  wire clk_100MHz_1;
  wire i_BTN_0_1;
  wire i_BTN_1_1;
  wire [7:0]i_SW_0_1;
  wire [6:0]ssd_dec_0_o_Cathodes;
  wire [3:0]ssd_mux_0_o_Anodes;
  wire [3:0]ssd_mux_0_o_Out;
  wire [2:0]xlslice_0_Dout;
  wire [3:0]xlslice_1_Dout;
  wire [3:0]xlslice_2_Dout;

  assign clk_100MHz_1 = i_CLK;
  assign i_BTN_0_1 = i_LD_0;
  assign i_BTN_1_1 = i_LD_1;
  assign i_SW_0_1 = i_SW[7:0];
  assign o_Anodes[3:0] = ssd_mux_0_o_Anodes;
  assign o_Cathodes[6:0] = ssd_dec_0_o_Cathodes;
  assign o_Status[3:0] = ALU_0_o_Status;
  ARITHMETIC_LOGIC_UNIT_ALU_0_0 ALU_0
       (.i_A(PIPO_0_o_Out),
        .i_B(PIPO_1_o_Out),
        .i_Sel(xlslice_0_Dout),
        .o_Out(ALU_0_o_Out),
        .o_Status(ALU_0_o_Status));
  ARITHMETIC_LOGIC_UNIT_xlslice_1_1 LSB
       (.Din(ALU_0_o_Out),
        .Dout(xlslice_2_Dout));
  ARITHMETIC_LOGIC_UNIT_xlslice_1_0 MSB
       (.Din(ALU_0_o_Out),
        .Dout(xlslice_1_Dout));
  ARITHMETIC_LOGIC_UNIT_PIPO_0_0 PIPO_0
       (.i_BTN(i_BTN_0_1),
        .i_CLK(clk_100MHz_1),
        .i_SW(i_SW_0_1),
        .o_Out(PIPO_0_o_Out));
  ARITHMETIC_LOGIC_UNIT_PIPO_0_1 PIPO_1
       (.i_BTN(i_BTN_1_1),
        .i_CLK(clk_100MHz_1),
        .i_SW(i_SW_0_1),
        .o_Out(PIPO_1_o_Out));
  ARITHMETIC_LOGIC_UNIT_xlslice_0_0 Selector
       (.Din(i_SW_0_1),
        .Dout(xlslice_0_Dout));
  ARITHMETIC_LOGIC_UNIT_ssd_dec_0_0 ssd_dec_0
       (.i_CLK(clk_100MHz_1),
        .i_Num(ssd_mux_0_o_Out),
        .o_Cathodes(ssd_dec_0_o_Cathodes));
  ARITHMETIC_LOGIC_UNIT_ssd_mux_0_0 ssd_mux_0
       (.i_CLK(clk_100MHz_1),
        .i_Digit_1({1'b0,1'b0,1'b0,1'b0}),
        .i_Digit_2({1'b0,1'b0,1'b0,1'b0}),
        .i_Digit_3(xlslice_1_Dout),
        .i_Digit_4(xlslice_2_Dout),
        .o_Anodes(ssd_mux_0_o_Anodes),
        .o_Out(ssd_mux_0_o_Out));
endmodule
