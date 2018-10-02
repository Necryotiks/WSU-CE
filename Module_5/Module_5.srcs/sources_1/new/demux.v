`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2018 07:43:43 PM
// Design Name: 
// Module Name: demux
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


module demux(
input i_En,
input [2:0] i_decInput, 
output reg [7:0] o_LED
    );
always@(*)
begin
case({i_En,i_decInput})
    4'b0000: o_LED = 8'b00000000;
    4'b1000: o_LED = 8'b00000001;
    4'b1001: o_LED = 8'b00000010;
    4'b1010: o_LED = 8'b00000100; 
    4'b1011: o_LED = 8'b00001000;
    4'b1100: o_LED = 8'b00010000;
    4'b1101: o_LED = 8'b00100000;
    4'b1110: o_LED = 8'b01000000;
    4'b1111: o_LED = 8'b10000000;
    default: o_LED = 8'b00000000;
endcase 
end
endmodule
