// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:module_ref:VGA_PORCH:1.0
// IP Revision: 1

(* X_CORE_INFO = "VGA_PORCH,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "TEST_VGA_PORCH_0_0,VGA_PORCH,{}" *)
(* CORE_GENERATION_INFO = "TEST_VGA_PORCH_0_0,VGA_PORCH,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=VGA_PORCH,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=VHDL,VIDEO_WIDTH=3,TOTAL_COLS=3,TOTAL_ROWS=3,ACTIVE_COLS=2,ACTIVE_ROWS=2}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module TEST_VGA_PORCH_0_0 (
  i_Clk,
  i_HSync,
  i_VSync,
  i_Red_Video,
  i_Grn_Video,
  i_Blu_Video,
  o_HSync,
  o_VSync,
  o_Red_Video,
  o_Grn_Video,
  o_Blu_Video
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_Clk, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_Clk CLK" *)
input wire i_Clk;
input wire i_HSync;
input wire i_VSync;
input wire [2 : 0] i_Red_Video;
input wire [2 : 0] i_Grn_Video;
input wire [2 : 0] i_Blu_Video;
output wire o_HSync;
output wire o_VSync;
output wire [2 : 0] o_Red_Video;
output wire [2 : 0] o_Grn_Video;
output wire [2 : 0] o_Blu_Video;

  VGA_PORCH #(
    .VIDEO_WIDTH(3),
    .TOTAL_COLS(3),
    .TOTAL_ROWS(3),
    .ACTIVE_COLS(2),
    .ACTIVE_ROWS(2)
  ) inst (
    .i_Clk(i_Clk),
    .i_HSync(i_HSync),
    .i_VSync(i_VSync),
    .i_Red_Video(i_Red_Video),
    .i_Grn_Video(i_Grn_Video),
    .i_Blu_Video(i_Blu_Video),
    .o_HSync(o_HSync),
    .o_VSync(o_VSync),
    .o_Red_Video(o_Red_Video),
    .o_Grn_Video(o_Grn_Video),
    .o_Blu_Video(o_Blu_Video)
  );
endmodule