`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2018 03:58:19 PM
// Design Name: 
// Module Name: cmp
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


module cmp(
    input [3:0] A,
    input [3:0] B,
    output LT_O,
    output EQ_O,
    output GT_O
    );

wire [3:0] GT_int;
wire [3:0] EQ_int;
wire [3:0] LT_int;

cmp_bitslice slice_0 (
    .A(A[0]),
    .B(B[0]),
    .LT_I(1'b0),
    .EQ_I(1'b1),
    .GT_I(1'b0),
    .LT_O(LT_int[0]),
    .EQ_O(EQ_int[0]),
    .GT_O(GT_int[0])
    );

genvar i;
generate 
for(i = 1; i <4; i = i + 1)
    begin
    cmp_bitslice slices(
    .A(A[i]),
    .B(B[i]),
    .LT_I(LT_int[i-1]),
    .EQ_I(EQ_int[i-1]),
    .GT_I(GT_int[i-1]),
    .LT_O(LT_int[i]),
    .EQ_O(EQ_int[i]),
    .GT_O(GT_int[i])
    );
    end
endgenerate

assign LT_O = LT_int[i];
assign EQ_O = EQ_int[i];
assign GT_O = GT_int[i];

endmodule
