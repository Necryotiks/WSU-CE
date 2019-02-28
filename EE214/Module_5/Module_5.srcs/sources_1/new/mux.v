`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2018 07:40:57 PM
// Design Name: 
// Module Name: mux
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


module mux(
input [7:0] i_Input,
input [2:0] i_Sel,
output reg o_Y
);
always@(*)
case(i_Sel)
3'b000: o_Y = i_Input[0];
3'b001: o_Y = i_Input[1];
3'b010: o_Y = i_Input[2];
3'b011: o_Y = i_Input[3];
3'b100: o_Y = i_Input[4];
3'b101: o_Y = i_Input[5];
3'b110: o_Y = i_Input[6];
3'b111: o_Y = i_Input[7];
endcase
endmodule
