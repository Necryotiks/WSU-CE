//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Tue Dec  4 15:49:01 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target TEST.bd
//Design      : TEST
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "TEST,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=TEST,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "TEST.hwdef" *) 
module TEST
   (i_CLK,
    i_Pattern_0,
    i_RST,
    o_BLUE,
    o_GREEN,
    o_HSYNC,
    o_RED,
    o_VSYNC);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, CLK_DOMAIN TEST_clk_100MHz, FREQ_HZ 100000000, PHASE 0.000" *) input i_CLK;
  input [3:0]i_Pattern_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RST, POLARITY ACTIVE_HIGH" *) input i_RST;
  output [2:0]o_BLUE;
  output [2:0]o_GREEN;
  output o_HSYNC;
  output [2:0]o_RED;
  output o_VSYNC;

  wire [2:0]VGA_COLOR_0_o_Blu_Video;
  wire [2:0]VGA_COLOR_0_o_Grn_Video;
  wire VGA_COLOR_0_o_HSync;
  wire [2:0]VGA_COLOR_0_o_Red_Video;
  wire VGA_COLOR_0_o_VSync;
  wire [2:0]VGA_PORCH_0_o_Blu_Video;
  wire [2:0]VGA_PORCH_0_o_Grn_Video;
  wire VGA_PORCH_0_o_HSync;
  wire [2:0]VGA_PORCH_0_o_Red_Video;
  wire VGA_PORCH_0_o_VSync;
  wire VGA_SYNC_0_o_HSync;
  wire VGA_SYNC_0_o_VSync;
  wire clk_100MHz_1;
  wire clk_wiz_clk_out1;
  wire [3:0]i_Pattern_0_1;
  wire reset_rtl_0_1;

  assign clk_100MHz_1 = i_CLK;
  assign i_Pattern_0_1 = i_Pattern_0[3:0];
  assign o_BLUE[2:0] = VGA_PORCH_0_o_Blu_Video;
  assign o_GREEN[2:0] = VGA_PORCH_0_o_Grn_Video;
  assign o_HSYNC = VGA_PORCH_0_o_HSync;
  assign o_RED[2:0] = VGA_PORCH_0_o_Red_Video;
  assign o_VSYNC = VGA_PORCH_0_o_VSync;
  assign reset_rtl_0_1 = i_RST;
  TEST_VGA_COLOR_0_0 VGA_COLOR_0
       (.i_Clk(clk_wiz_clk_out1),
        .i_HSync(VGA_SYNC_0_o_HSync),
        .i_Pattern(i_Pattern_0_1),
        .i_VSync(VGA_SYNC_0_o_VSync),
        .o_Blu_Video(VGA_COLOR_0_o_Blu_Video),
        .o_Grn_Video(VGA_COLOR_0_o_Grn_Video),
        .o_HSync(VGA_COLOR_0_o_HSync),
        .o_Red_Video(VGA_COLOR_0_o_Red_Video),
        .o_VSync(VGA_COLOR_0_o_VSync));
  TEST_VGA_PORCH_0_0 VGA_PORCH_0
       (.i_Blu_Video(VGA_COLOR_0_o_Blu_Video),
        .i_Clk(clk_wiz_clk_out1),
        .i_Grn_Video(VGA_COLOR_0_o_Grn_Video),
        .i_HSync(VGA_COLOR_0_o_HSync),
        .i_Red_Video(VGA_COLOR_0_o_Red_Video),
        .i_VSync(VGA_COLOR_0_o_VSync),
        .o_Blu_Video(VGA_PORCH_0_o_Blu_Video),
        .o_Grn_Video(VGA_PORCH_0_o_Grn_Video),
        .o_HSync(VGA_PORCH_0_o_HSync),
        .o_Red_Video(VGA_PORCH_0_o_Red_Video),
        .o_VSync(VGA_PORCH_0_o_VSync));
  TEST_VGA_SYNC_0_0 VGA_SYNC_0
       (.i_Clk(clk_wiz_clk_out1),
        .o_HSync(VGA_SYNC_0_o_HSync),
        .o_VSync(VGA_SYNC_0_o_VSync));
  TEST_clk_wiz_0 clk_wiz
       (.clk_in1(clk_100MHz_1),
        .clk_out1(clk_wiz_clk_out1),
        .reset(reset_rtl_0_1));
endmodule
