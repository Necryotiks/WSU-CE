//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Wed Mar 13 19:01:35 2019
//Host        : Necryotiks running 64-bit unknown
//Command     : generate_target HDMI_CONTROLLER_BD.bd
//Design      : HDMI_CONTROLLER_BD
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "HDMI_CONTROLLER_BD,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=HDMI_CONTROLLER_BD,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=4,synth_mode=Global}" *) (* HW_HANDOFF = "HDMI_CONTROLLER_BD.hwdef" *) 
module HDMI_CONTROLLER_BD
   (TMDS_CLK_N_0,
    TMDS_CLK_P_0,
    TMDS_DATA_N_0,
    TMDS_DATA_P_0,
    clk_100MHz,
    i_SEL_0,
    reset_rtl_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TMDS_CLK_N_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TMDS_CLK_N_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) output TMDS_CLK_N_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TMDS_CLK_P_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TMDS_CLK_P_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) output TMDS_CLK_P_0;
  output [2:0]TMDS_DATA_N_0;
  output [2:0]TMDS_DATA_P_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN HDMI_CONTROLLER_BD_clk_100MHz, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_100MHz;
  input [1:0]i_SEL_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_rtl_0;

  wire VGA_controller_0_o_HSYNC;
  wire VGA_controller_0_o_VDE;
  wire VGA_controller_0_o_VSYNC;
  wire [15:0]VGA_controller_0_o_X_COORD;
  wire [15:0]VGA_controller_0_o_Y_COORD;
  wire clk_100MHz_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_locked;
  wire [7:0]color_logic_0_o_BLUE;
  wire [7:0]color_logic_0_o_GREEN;
  wire [7:0]color_logic_0_o_RED;
  wire hdmi_tx_0_TMDS_CLK_N;
  wire hdmi_tx_0_TMDS_CLK_P;
  wire [2:0]hdmi_tx_0_TMDS_DATA_N;
  wire [2:0]hdmi_tx_0_TMDS_DATA_P;
  wire [1:0]i_SEL_0_1;
  wire reset_rtl_0_1;

  assign TMDS_CLK_N_0 = hdmi_tx_0_TMDS_CLK_N;
  assign TMDS_CLK_P_0 = hdmi_tx_0_TMDS_CLK_P;
  assign TMDS_DATA_N_0[2:0] = hdmi_tx_0_TMDS_DATA_N;
  assign TMDS_DATA_P_0[2:0] = hdmi_tx_0_TMDS_DATA_P;
  assign clk_100MHz_1 = clk_100MHz;
  assign i_SEL_0_1 = i_SEL_0[1:0];
  assign reset_rtl_0_1 = reset_rtl_0;
  HDMI_CONTROLLER_BD_VGA_controller_0_0 VGA_controller_0
       (.i_CLK(clk_wiz_0_clk_out1),
        .o_HSYNC(VGA_controller_0_o_HSYNC),
        .o_VDE(VGA_controller_0_o_VDE),
        .o_VSYNC(VGA_controller_0_o_VSYNC),
        .o_X_COORD(VGA_controller_0_o_X_COORD),
        .o_Y_COORD(VGA_controller_0_o_Y_COORD));
  HDMI_CONTROLLER_BD_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_100MHz_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .locked(clk_wiz_0_locked),
        .reset(reset_rtl_0_1));
  HDMI_CONTROLLER_BD_color_logic_0_0 color_logic_0
       (.i_CLK(clk_wiz_0_clk_out1),
        .i_SEL(i_SEL_0_1),
        .i_VDE(VGA_controller_0_o_VDE),
        .i_X_COORD(VGA_controller_0_o_X_COORD),
        .i_Y_COORD(VGA_controller_0_o_Y_COORD),
        .o_BLUE(color_logic_0_o_BLUE),
        .o_GREEN(color_logic_0_o_GREEN),
        .o_RED(color_logic_0_o_RED));
  HDMI_CONTROLLER_BD_hdmi_tx_0_0 hdmi_tx_0
       (.TMDS_CLK_N(hdmi_tx_0_TMDS_CLK_N),
        .TMDS_CLK_P(hdmi_tx_0_TMDS_CLK_P),
        .TMDS_DATA_N(hdmi_tx_0_TMDS_DATA_N),
        .TMDS_DATA_P(hdmi_tx_0_TMDS_DATA_P),
        .ade(1'b0),
        .aux0_din({1'b0,1'b0,1'b0,1'b0}),
        .aux1_din({1'b0,1'b0,1'b0,1'b0}),
        .aux2_din({1'b0,1'b0,1'b0,1'b0}),
        .blue(color_logic_0_o_BLUE),
        .green(color_logic_0_o_GREEN),
        .hsync(VGA_controller_0_o_HSYNC),
        .pix_clk(clk_wiz_0_clk_out1),
        .pix_clk_locked(clk_wiz_0_locked),
        .pix_clkx5(clk_wiz_0_clk_out2),
        .red(color_logic_0_o_RED),
        .rst(reset_rtl_0_1),
        .vde(VGA_controller_0_o_VDE),
        .vsync(VGA_controller_0_o_VSYNC));
endmodule
