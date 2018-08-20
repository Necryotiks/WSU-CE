`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2018 04:21:55 PM
// Design Name: 
// Module Name: SIPO
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


module SIPO(
input i_SDI,
input i_CLK,
output  [7:0] o_LED
    );
    
reg [7:0] r_SDI;

always@(posedge(i_CLK))
begin
r_SDI = r_SDI << 1;
end
assign o_LED = r_SDI;    
endmodule
