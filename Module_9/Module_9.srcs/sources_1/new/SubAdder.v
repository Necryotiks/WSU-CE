`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2018 03:54:35 PM
// Design Name: 
// Module Name: SubAdder
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


module SubAdder(
    input [7:0] i_A,
    input [7:0] i_B,
    input i_Sub,
    output o_Carry,
    output [7:0] o_Sum
    );
    
    wire [7:0] w_A;
    wire [7:0] w_B;
    wire w_Sub;
    wire w_Carry;
    wire w_Cin;
    wire [7:0] w_Sum;
   
    assign w_A = i_A;
    assign w_B = i_B ^ {8{w_Sub}};
    assign w_Sub = i_Sub;
    assign w_Cin = (w_Sub ^ 1'b0);
    assign o_Sum = w_Sum;
    assign o_Carry = w_Carry ^ w_Sub;
    CLA #(.MAX_WIDTH(7)) C1(
    .i_A(w_A),
    .i_B(w_B),
    .i_Cin(w_Cin),
    .o_S(w_Sum),
    .o_Cout(w_Carry)
  
    );
    
    
    
   
    
    
    
endmodule
