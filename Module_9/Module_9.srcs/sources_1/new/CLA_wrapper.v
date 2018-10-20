`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2018 10:51:49 PM
// Design Name: 
// Module Name: CLA_wrapper
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


module CLA_wrapper(
    input [3:0] i_SW_LOWER,
    input [7:4] i_SW_UPPER,
    output [6:0] o_Cathodes,
    output [3:0] o_Anodes
    );
    
    CLA #(.MAX_WIDTH(3)) CLA1(
    .i_A(i_SW_UPPER),
    .i_B(i_SW_LOWER),
    .o_S(),
    .o_Cout()
    );
endmodule
