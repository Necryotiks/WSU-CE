`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/21/2018 08:57:08 PM
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

`timescale 1ns/1ps
module counter (
	input clk,
	output Y1, Y0
);

reg [27:0] counter1;

always @ (posedge clk)
begin
	counter1 <= counter1 + 1;
end

assign Y1 = counter1[27];
assign Y0 = counter1[26];

endmodule

