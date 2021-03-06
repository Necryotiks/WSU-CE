//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_36cd_wrapper.bd
//Design : bd_36cd_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_36cd_wrapper
   (clk,
    probe0,
    probe1,
    probe10,
    probe11,
    probe12,
    probe13,
    probe14,
    probe15,
    probe16,
    probe17,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9);
  input clk;
  input [31:0]probe0;
  input [31:0]probe1;
  input [31:0]probe10;
  input [0:0]probe11;
  input [0:0]probe12;
  input [31:0]probe13;
  input [31:0]probe14;
  input [31:0]probe15;
  input [31:0]probe16;
  input [0:0]probe17;
  input [31:0]probe2;
  input [31:0]probe3;
  input [31:0]probe4;
  input [31:0]probe5;
  input [31:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
  input [31:0]probe9;

  wire clk;
  wire [31:0]probe0;
  wire [31:0]probe1;
  wire [31:0]probe10;
  wire [0:0]probe11;
  wire [0:0]probe12;
  wire [31:0]probe13;
  wire [31:0]probe14;
  wire [31:0]probe15;
  wire [31:0]probe16;
  wire [0:0]probe17;
  wire [31:0]probe2;
  wire [31:0]probe3;
  wire [31:0]probe4;
  wire [31:0]probe5;
  wire [31:0]probe6;
  wire [0:0]probe7;
  wire [0:0]probe8;
  wire [31:0]probe9;

  bd_36cd bd_36cd_i
       (.clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe10(probe10),
        .probe11(probe11),
        .probe12(probe12),
        .probe13(probe13),
        .probe14(probe14),
        .probe15(probe15),
        .probe16(probe16),
        .probe17(probe17),
        .probe2(probe2),
        .probe3(probe3),
        .probe4(probe4),
        .probe5(probe5),
        .probe6(probe6),
        .probe7(probe7),
        .probe8(probe8),
        .probe9(probe9));
endmodule
