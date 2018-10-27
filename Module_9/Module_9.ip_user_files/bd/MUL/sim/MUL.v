//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Fri Oct 26 20:22:55 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target MUL.bd
//Design      : MUL
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "MUL,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MUL,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "MUL.hwdef" *) 
module MUL
   (an_0,
    cathode_0,
    clk_100MHz,
    i_A_0,
    i_B_0);
  output [3:0]an_0;
  output [6:0]cathode_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN MULTIPLIER_clk_100MHz, FREQ_HZ 100000000, PHASE 0.000" *) input clk_100MHz;
  input [7:0]i_A_0;
  input [7:0]i_B_0;

  wire [3:0]Digit_1_Dout;
  wire [3:0]Digit_2_Dout;
  wire [3:0]Digit_3_Dout;
  wire [3:0]Digit_4_Dout;
  wire [15:0]Multiplier_0_o_Result;
  wire clk_100MHz_1;
  wire [7:0]i_A_0_1;
  wire [7:0]i_B_0_1;
  wire [6:0]ssd_dec_0_cathode;
  wire [3:0]ssd_mux_0_an;
  wire [3:0]ssd_mux_0_o_Out;

  assign an_0[3:0] = ssd_mux_0_an;
  assign cathode_0[6:0] = ssd_dec_0_cathode;
  assign clk_100MHz_1 = clk_100MHz;
  assign i_A_0_1 = i_A_0[7:0];
  assign i_B_0_1 = i_B_0[7:0];
  MUL_Digit_1_0 Digit_1
       (.Din(Multiplier_0_o_Result),
        .Dout(Digit_1_Dout));
  MUL_Digit_2_0 Digit_2
       (.Din(Multiplier_0_o_Result),
        .Dout(Digit_2_Dout));
  MUL_Digit_3_0 Digit_3
       (.Din(Multiplier_0_o_Result),
        .Dout(Digit_3_Dout));
  MUL_Digit_4_0 Digit_4
       (.Din(Multiplier_0_o_Result),
        .Dout(Digit_4_Dout));
  MUL_Multiplier_0_0 Multiplier_0
       (.i_A(i_A_0_1),
        .i_B(i_B_0_1),
        .o_Result(Multiplier_0_o_Result));
  MUL_ssd_dec_0_0 ssd_dec_0
       (.cathode(ssd_dec_0_cathode),
        .i_CLK(clk_100MHz_1),
        .i_Num(ssd_mux_0_o_Out));
  MUL_ssd_mux_0_0 ssd_mux_0
       (.an(ssd_mux_0_an),
        .i_CLK(clk_100MHz_1),
        .i_Digit_1(Digit_1_Dout),
        .i_Digit_2(Digit_2_Dout),
        .i_Digit_3(Digit_3_Dout),
        .i_Digit_4(Digit_4_Dout),
        .o_Out(ssd_mux_0_o_Out));
endmodule
