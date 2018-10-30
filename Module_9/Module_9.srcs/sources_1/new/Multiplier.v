`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2018 06:26:42 PM
// Design Name: 
// Module Name: Multiplier
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


module Multiplier(
    input [7:0] i_A,
    input [7:0] i_B,
    output [15:0] o_Result
    );
    
    wire [7:0] w_A;
    wire [7:0] w_B;
    wire [15:0] w_Result;
    assign w_A = i_A;
    assign w_B = i_B;
    assign w_Result = w_A * w_B;
    assign o_Result = w_Result;
endmodule
