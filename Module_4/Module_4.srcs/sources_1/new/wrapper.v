`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2018 09:58:43 PM
// Design Name: 
// Module Name: wrapper
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


module wrapper(
    input i_CLK,
    input [7:0] I,    
    input D,          
    input R,          
    input F,          
    input En,         
    output [7:0] Y
    );
     shifter sft(
       .I(I),
       .i_CLK(i_CLK),
       .D(D),
       .R(R),
       .F(F),
       .En(En),
       .Y(Y)
       );
    
endmodule
