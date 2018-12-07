//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Fri Dec  7 10:01:18 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target HDMI_VGA.bd
//Design      : HDMI_VGA
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "HDMI_VGA,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=HDMI_VGA,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=2,synth_mode=Global}" *) (* HW_HANDOFF = "HDMI_VGA.hwdef" *) 
module HDMI_VGA
   (i_CLK,
    i_RST,
    i_SEL,
    o_BLUE,
    o_GREEN,
    o_HSYNC,
    o_RED,
    o_VSYNC);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, CLK_DOMAIN HDMI_VGA_i_CLK, FREQ_HZ 100000000, PHASE 0.000" *) input i_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RST, POLARITY ACTIVE_HIGH" *) input i_RST;
  input [1:0]i_SEL;
  output [3:0]o_BLUE;
  output [3:0]o_GREEN;
  output o_HSYNC;
  output [3:0]o_RED;
  output o_VSYNC;

  wire [3:0]VGA_controller_0_o_BLUE;
  wire [3:0]VGA_controller_0_o_GREEN;
  wire VGA_controller_0_o_HSYNC;
  wire [3:0]VGA_controller_0_o_RED;
  wire VGA_controller_0_o_VDE;
  wire VGA_controller_0_o_VSYNC;
  wire [9:0]VGA_controller_0_o_X_COORD;
  wire [9:0]VGA_controller_0_o_Y_COORD;
  wire clk_wiz_0_clk_out1;
  wire [7:0]color_logic_0_o_BLUE;
  wire [7:0]color_logic_0_o_GREEN;
  wire [7:0]color_logic_0_o_RED;
  wire i_CLK_1;
  wire i_RST_1;
  wire [1:0]i_SEL_0_1;

  assign i_CLK_1 = i_CLK;
  assign i_RST_1 = i_RST;
  assign i_SEL_0_1 = i_SEL[1:0];
  assign o_BLUE[3:0] = VGA_controller_0_o_BLUE;
  assign o_GREEN[3:0] = VGA_controller_0_o_GREEN;
  assign o_HSYNC = VGA_controller_0_o_HSYNC;
  assign o_RED[3:0] = VGA_controller_0_o_RED;
  assign o_VSYNC = VGA_controller_0_o_VSYNC;
  HDMI_VGA_VGA_controller_0_0 VGA_controller_0
       (.i_CLK(clk_wiz_0_clk_out1),
        .o_HSYNC(VGA_controller_0_o_HSYNC),
        .o_VDE(VGA_controller_0_o_VDE),
        .o_VSYNC(VGA_controller_0_o_VSYNC),
        .o_X_COORD(VGA_controller_0_o_X_COORD),
        .o_Y_COORD(VGA_controller_0_o_Y_COORD));
  HDMI_VGA_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(i_CLK_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(i_RST_1));
  HDMI_VGA_color_logic_0_0 color_logic_0
       (.i_CLK(clk_wiz_0_clk_out1),
        .i_SEL(i_SEL_0_1),
        .i_VDE(VGA_controller_0_o_VDE),
        .i_X_COORD(VGA_controller_0_o_X_COORD),
        .i_Y_COORD(VGA_controller_0_o_Y_COORD),
        .o_BLUE(color_logic_0_o_BLUE),
        .o_GREEN(color_logic_0_o_GREEN),
        .o_RED(color_logic_0_o_RED));
  HDMI_VGA_xlslice_0_0 xlslice_0
       (.Din(color_logic_0_o_RED),
        .Dout(VGA_controller_0_o_RED));
  HDMI_VGA_xlslice_0_1 xlslice_1
       (.Din(color_logic_0_o_GREEN),
        .Dout(VGA_controller_0_o_GREEN));
  HDMI_VGA_xlslice_0_2 xlslice_2
       (.Din(color_logic_0_o_BLUE),
        .Dout(VGA_controller_0_o_BLUE));
endmodule
