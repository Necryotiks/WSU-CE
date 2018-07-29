`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2018 01:02:31 PM
// Design Name: 
// Module Name: combCirc
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


module combCirc(
input A,B,C,
output X
    );
wire N1,N2,N3;//Outputs of each gate

assign #5 N1 = A & B;//And
assign #5 N2 = ~B;//Not
assign #5 N3 = N2 & C;//And
assign #5 X = N1 | N3;//Or
//At 100 ns delay, glitch is gone.
endmodule
