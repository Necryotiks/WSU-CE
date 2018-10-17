`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2018 08:35:34 PM
// Design Name: 
// Module Name: PIPO_wrapper
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


module PIPO_wrapper(
    input i_CLK,
    input [7:0] i_SW,
    input i_BTN,
    output [7:0] o_LED
    );
    
    wire w_CLK;
    wire [7:0] w_SW;
    wire w_BTN;
    wire [7:0] w_LED;
    
    assign w_CLK = i_CLK;
    assign w_SW = i_SW;
    assign w_BTN = i_BTN;
    assign o_LED = w_LED;
    
    
    PIPO pipo_uut(
    .i_CLK(w_CLK),
    .i_SW(w_SW),
    .i_BTN(w_BTN),
    .o_LED(w_LED)
    );
endmodule
