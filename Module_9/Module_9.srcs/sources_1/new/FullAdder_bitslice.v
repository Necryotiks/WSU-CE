`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2018 09:53:42 PM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder_bitslice(
    input i_A,
    input i_B,
    input i_Carryin,
    output o_Sum,
    output o_Carryout
    );
    
    assign o_Sum = i_A ^ i_B ^ i_Carryin;
    assign o_Carryout =  (i_A & i_B) | ((i_A ^ i_B) & i_Carryin);
endmodule
