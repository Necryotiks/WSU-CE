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
        O = {O[7:1], I[0]};
    3'b001:
        O = {O[7:2], I[1], O[0]};
    3'b010:
        O = {O[7:3], I[2], O[1:0]};
    3'b011:
        O = {O[7:4],I[3], O[2:0]};
    3'b100:
        O = {O[7:5],I[4], O[3:0]};
    3'b101:
        O = {O[7:6],I[5], O[4:0]};
    3'b110:
        O = {O[7],I[6], O[5:0]};
    3'b111: 
        O = {I[7], O[6:0]};       
    default:
        O = O;
    endcase
endmodule
