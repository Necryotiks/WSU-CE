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


// IP VLNV: xilinx.com:module_ref:RTM_FSM:1.0
// IP Revision: 1

(* X_CORE_INFO = "RTM_FSM,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "Reaction_Time_Averager_RTM_FSM_0_0,RTM_FSM,{}" *)
(* CORE_GENERATION_INFO = "Reaction_Time_Averager_RTM_FSM_0_0,RTM_FSM,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=RTM_FSM,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Reaction_Time_Averager_RTM_FSM_0_0 (
  i_CLK1KHZ,
  i_RST,
  i_CVAL,
  i_Start,
  i_Terminate,
  i_React,
  o_Ready,
  o_SWEN,
  o_ACC_EN,
  o_DONE,
  o_T_NUM,
  o_SRST,
  o_TRIAL_NUM,
  o_CEN
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_CLK1KHZ, ASSOCIATED_RESET i_RST, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_HZ_Counter_0_0_o_CLK, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_CLK1KHZ CLK" *)
input wire i_CLK1KHZ;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_RST RST" *)
input wire i_RST;
input wire [12 : 0] i_CVAL;
input wire i_Start;
input wire i_Terminate;
input wire i_React;
output wire [1 : 0] o_Ready;
output wire o_SWEN;
output wire o_ACC_EN;
output wire o_DONE;
output wire [2 : 0] o_T_NUM;
output wire o_SRST;
output wire [2 : 0] o_TRIAL_NUM;
output wire o_CEN;

  RTM_FSM inst (
    .i_CLK1KHZ(i_CLK1KHZ),
    .i_RST(i_RST),
    .i_CVAL(i_CVAL),
    .i_Start(i_Start),
    .i_Terminate(i_Terminate),
    .i_React(i_React),
    .o_Ready(o_Ready),
    .o_SWEN(o_SWEN),
    .o_ACC_EN(o_ACC_EN),
    .o_DONE(o_DONE),
    .o_T_NUM(o_T_NUM),
    .o_SRST(o_SRST),
    .o_TRIAL_NUM(o_TRIAL_NUM),
    .o_CEN(o_CEN)
  );
endmodule
