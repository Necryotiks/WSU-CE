`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2018 12:18:49 PM
// Design Name: 
// Module Name: counter_wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter_wrapper(
 input i_CLK,
 input i_RST,
 output [3:0] o_LED
    );
    
    wire [27:0] w_CLK_WIRE;
    wire [3:0] w_OUT;
    counter_28bit c28(
    .i_CLK(i_CLK),
    .i_RST(i_RST),
    .o_Q(w_CLK_WIRE)
    );
    counter_4bit c4(
    .i_CLK(w_CLK_WIRE[27]),
    .i_RST(i_RST),
    .o_Q(w_OUT)
    );
    assign o_LED = w_OUT;
endmodule
