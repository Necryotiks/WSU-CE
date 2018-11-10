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
input i_RST,
input i_CLK,
output  [7:0] o_LED
    );
    
reg [7:0] i;
reg [27:0] counter1;
wire Y1;
always @ (posedge(i_CLK))
begin
	counter1 <= counter1 + 1;
end

assign Y1 = counter1[22];

always@(posedge(Y1))
begin
i[0] = i_SDI; 
if(i_RST == 1)  
    i = i << 1'b1;
end
assign o_LED = i;
endmodule
