`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2018 07:46:07 PM
// Design Name: 
// Module Name: latch
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


module latch (
    input [7:0] I,
    input [2:0] S,
    output reg [7:0] O
);

always @ (*)
    case (S)
    3'b000:
        O = {7'd0, I[0]};
    3'b001:
        O = {6'd0, I[1], 1'd0};
    3'b010:
        O = {5'd0, I[2], 2'd0};
    3'b011:
        O = {4'd0,I[3], 3'd0};
    3'b100:
        O = {3'd0,I[4], 4'd0};
    3'b101:
        O = {2'd0,I[5], 5'd0};
    3'b110:
        O = {1'd0,I[6], 6'd0};
    3'b111: 
        O = {I[7], 7'd0};       
    default:
        O = O;
    endcase
endmodule
