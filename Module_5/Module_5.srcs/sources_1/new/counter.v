`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2018 07:38:54 PM
// Design Name: 
// Module Name: counter
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


module counter (
	input clk,
	output Y2, Y1, Y0
);

reg [28:0] counter1;

always @ (posedge clk)
begin
	counter1 <= counter1 + 1;
end

assign Y2 = counter1[28];
assign Y1 = counter1[27];
assign Y0 = counter1[26];

endmodule
