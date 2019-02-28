`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2018 05:04:14 PM
// Design Name: 
// Module Name: BCD_TO_BINARY
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


module BCD_TO_BINARY(
input i_CLK,
input [3:0] i_Digit1,
input [3:0] i_Digit2,
input [3:0] i_Digit3,
input [3:0] i_Digit4,
output [13:0] o_DATA
);

wire w_CLK;
wire [3:0] w_Digit1;
wire [3:0] w_Digit2;
wire [3:0] w_Digit3;
wire [3:0] w_Digit4;
reg [13:0] r_DATA;

assign w_CLK = i_CLK;
assign w_Digit1 = i_Digit1;
assign w_Digit2 = i_Digit2;
assign w_Digit3 = i_Digit3;
assign w_Digit4 = i_Digit4;
assign o_DATA = r_DATA;

always@(posedge w_CLK)
begin
    r_DATA = ((w_Digit1 * 14'd1000) + (w_Digit2 * 14'd100) + (w_Digit3 * 14'd10) + (w_Digit4 * 14'd1));
end
endmodule
