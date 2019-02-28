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


// IP VLNV: xilinx.com:module_ref:BINARY_TO_BCD:1.0
// IP Revision: 1

(* X_CORE_INFO = "BINARY_TO_BCD,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "Reaction_Time_Averager_BINARY_TO_BCD_0_0,BINARY_TO_BCD,{}" *)
(* CORE_GENERATION_INFO = "Reaction_Time_Averager_BINARY_TO_BCD_0_0,BINARY_TO_BCD,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=BINARY_TO_BCD,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,INPUT_WIDTH=14,DECIMAL_DIGITS=4}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Reaction_Time_Averager_BINARY_TO_BCD_0_0 (
  i_Clock,
  i_Binary,
  i_Start,
  o_BCD
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_Clock, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_Clock_Divider_0_0_o_Out_0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_Clock CLK" *)
input wire i_Clock;
input wire [13 : 0] i_Binary;
input wire i_Start;
output wire [15 : 0] o_BCD;

  BINARY_TO_BCD #(
    .INPUT_WIDTH(14),
    .DECIMAL_DIGITS(4)
  ) inst (
    .i_Clock(i_Clock),
    .i_Binary(i_Binary),
    .i_Start(i_Start),
    .o_BCD(o_BCD)
  );
endmodule
