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
input I0, I1, I2, I3, S0, S1,
output reg Y
);
always@(*)
case({S1,S0})
2'b00: Y = I0;
2'b01: Y = I1;
2'b10: Y = I2;
2'b11: Y = I3;
endcase
endmodule
