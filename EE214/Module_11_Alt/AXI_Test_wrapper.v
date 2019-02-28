// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Nov 12 00:38:11 2018
// Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
// Command     : write_verilog C:/Users/Sergaljerk/WSU-CPTE/Module_11_Alt/AXI_Test_wrapper.v -mode pin_planning -force
// Design      : AXI_Test_wrapper
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
module AXI_Test_wrapper(DDR_dm, DDR_addr, DDR_ba, DDR_dqs_p, DDR_dq, DDR_dqs_n, DDR_cas_n, DDR_ck_n, DDR_ck_p, DDR_cke, DDR_cs_n, DDR_odt, DDR_ras_n, DDR_reset_n, DDR_we_n, FIXED_IO_mio, FIXED_IO_ddr_vrn, FIXED_IO_ddr_vrp, FIXED_IO_ps_clk, FIXED_IO_ps_porb, FIXED_IO_ps_srstb, gpio_rtl_0_tri_io);
  inout [3:0] DDR_dm;
  inout [14:0] DDR_addr;
  inout [2:0] DDR_ba;
  inout [3:0] DDR_dqs_p;
  inout [31:0] DDR_dq;
  inout [3:0] DDR_dqs_n;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout [53:0] FIXED_IO_mio;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  inout [31:0] gpio_rtl_0_tri_io;

endmodule
