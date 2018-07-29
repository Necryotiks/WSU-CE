`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2018 03:51:40 PM
// Design Name: 
// Module Name: cmp_bitslice
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


module cmp_bitslice(
    input A,
    input B,
    input LT_I,
    input EQ_I,
    input GT_I,
    output LT_O,
    output EQ_O,
    output GT_O
    );

assign GT_O = ( A & ~B ) | (~(A ^ B) & GT_I);
assign EQ_O = EQ_I & /*(( A & B ) | (~A & ~B))*/ (A ~^ B);
assign LT_O = ( B & ~A ) | (~(A ^ B) & LT_I);
endmodule
