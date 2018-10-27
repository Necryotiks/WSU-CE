`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2018 11:00:30 AM
// Design Name: 
// Module Name: Comparator
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


module Comparator(
input [15:0] i_A,
input [15:0] i_B,
output  o_GT,
output  o_EQ,
output  o_LT
    );
    
    wire [15:0] w_A;
    wire [15:0] w_B;
    reg r_GT;
    reg r_EQ;
    reg r_LT;
    assign w_A = i_A;
    assign w_B = i_B;
    assign o_GT = r_GT;
    assign o_EQ = r_EQ;
    assign o_LT = r_LT;
    
always@(w_A,w_B)
begin
    if (w_A > w_B)
        {r_GT,r_EQ,r_LT} <= 3'b100;
    else if(w_A == w_B)
        {r_GT,r_EQ,r_LT} <= 3'b010;
    else
        {r_GT,r_EQ,r_LT} <= 3'b001;
end
 
endmodule
