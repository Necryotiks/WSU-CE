//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sat Oct 27 10:37:56 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target CLA_ADDER.bd
//Design      : CLA_ADDER
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "CLA_ADDER,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=CLA_ADDER,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=3,synth_mode=Global}" *) (* HW_HANDOFF = "CLA_ADDER.hwdef" *) 
module CLA_ADDER
   (i_CLK,
    i_SW_LOWER,
    i_SW_UPPER,
    o_Anodes,
    o_Cathodes,
    o_Overflow);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, CLK_DOMAIN CLA_ADDER_i_CLK, FREQ_HZ 100000000, PHASE 0.000" *) input i_CLK;
  input [3:0]i_SW_LOWER;
  input [3:0]i_SW_UPPER;
  output [3:0]o_Anodes;
  output [6:0]o_Cathodes;
  output o_Overflow;

  wire CLA_0_o_Cout;
  wire [3:0]CLA_0_o_S;
  wire clk_100MHz_1;
  wire [3:0]i_A_0_1;
  wire [3:0]i_B_0_1;
  wire [6:0]ssd_dec_0_cathode;
  wire [3:0]ssd_mux_0_an;
  wire [3:0]ssd_mux_0_o_Out;
  wire [3:0]temp_mux_input_0_r_SSD_0;
  wire [3:0]temp_mux_input_0_r_SSD_1;

  assign clk_100MHz_1 = i_CLK;
  assign i_A_0_1 = i_SW_UPPER[3:0];
  assign i_B_0_1 = i_SW_LOWER[3:0];
  assign o_Anodes[3:0] = ssd_mux_0_an;
  assign o_Cathodes[6:0] = ssd_dec_0_cathode;
  assign o_Overflow = CLA_0_o_Cout;
  CLA_ADDER_CLA_0_0 CLA_0
       (.i_A(i_A_0_1),
        .i_B(i_B_0_1),
        .o_Cout(CLA_0_o_Cout),
        .o_S(CLA_0_o_S));
  CLA_ADDER_ssd_dec_0_0 ssd_dec_0
       (.cathode(ssd_dec_0_cathode),
        .i_CLK(clk_100MHz_1),
        .i_Num(ssd_mux_0_o_Out));
  CLA_ADDER_ssd_mux_0_0 ssd_mux_0
       (.an(ssd_mux_0_an),
        .i_CLK(clk_100MHz_1),
        .i_Digit_1({1'b0,1'b0,1'b0,1'b0}),
        .i_Digit_2({1'b0,1'b0,1'b0,1'b0}),
        .i_Digit_3(temp_mux_input_0_r_SSD_1),
        .i_Digit_4(temp_mux_input_0_r_SSD_0),
        .o_Out(ssd_mux_0_o_Out));
  CLA_ADDER_temp_mux_input_0_0 temp_mux_input_0
       (.i_CLK(clk_100MHz_1),
        .r_SSD_0(temp_mux_input_0_r_SSD_0),
        .r_SSD_1(temp_mux_input_0_r_SSD_1),
        .w_SUM(CLA_0_o_S));
endmodule
