// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:RAM_RANGLER_FSM:1.0
// IP Revision: 1

(* X_CORE_INFO = "RAM_RANGLER_FSM,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "CHAR_ROM_DISPLAY_RAM_RANGLER_FSM_0_0,RAM_RANGLER_FSM,{}" *)
(* CORE_GENERATION_INFO = "CHAR_ROM_DISPLAY_RAM_RANGLER_FSM_0_0,RAM_RANGLER_FSM,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=RAM_RANGLER_FSM,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module CHAR_ROM_DISPLAY_RAM_RANGLER_FSM_0_0 (
  i_CLK,
  i_RESETN,
  i_DATA,
  i_VDE,
  i_HCNT,
  i_VCNT,
  i_END_OF_LINE,
  i_END_OF_SCREEN,
  i_WRITE_REQUEST,
  o_CHAR_LINE_CNT,
  o_ASCII_VAL,
  o_FG_RED,
  o_FG_GREEN,
  o_FG_BLUE
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_CLK, ASSOCIATED_RESET i_RESETN, FREQ_HZ 74250000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_CLK CLK" *)
input wire i_CLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_RESETN RST" *)
input wire i_RESETN;
input wire [31 : 0] i_DATA;
input wire i_VDE;
input wire [15 : 0] i_HCNT;
input wire [15 : 0] i_VCNT;
input wire [15 : 0] i_END_OF_LINE;
input wire [15 : 0] i_END_OF_SCREEN;
input wire i_WRITE_REQUEST;
output wire [3 : 0] o_CHAR_LINE_CNT;
output wire [7 : 0] o_ASCII_VAL;
output wire [7 : 0] o_FG_RED;
output wire [7 : 0] o_FG_GREEN;
output wire [7 : 0] o_FG_BLUE;

  RAM_RANGLER_FSM inst (
    .i_CLK(i_CLK),
    .i_RESETN(i_RESETN),
    .i_DATA(i_DATA),
    .i_VDE(i_VDE),
    .i_HCNT(i_HCNT),
    .i_VCNT(i_VCNT),
    .i_END_OF_LINE(i_END_OF_LINE),
    .i_END_OF_SCREEN(i_END_OF_SCREEN),
    .i_WRITE_REQUEST(i_WRITE_REQUEST),
    .o_CHAR_LINE_CNT(o_CHAR_LINE_CNT),
    .o_ASCII_VAL(o_ASCII_VAL),
    .o_FG_RED(o_FG_RED),
    .o_FG_GREEN(o_FG_GREEN),
    .o_FG_BLUE(o_FG_BLUE)
  );
endmodule
