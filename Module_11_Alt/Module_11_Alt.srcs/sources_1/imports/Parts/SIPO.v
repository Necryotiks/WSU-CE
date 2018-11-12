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
input i_SFT,
input i_CLK,
output [7:0] o_OUT
    );
    
reg [7:0] r_OUT;
wire w_SDI;
wire w_SFT;

assign w_SDI = i_SDI;
assign w_SFT = i_SFT;

always@(posedge(i_CLK))
begin
r_OUT[0] = w_SDI; 
if(i_SFT == 1)  
    r_OUT = r_OUT << 1'b1;
end
assign o_OUT = r_OUT;
endmodule
