`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2018 12:10:41 PM
// Design Name: 
// Module Name: dff
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


module dff(
   input D,clk,rst,
output reg Q
    );
    
always @(posedge(clk))
begin
if (rst == 1) // if reset is asserted, then output is zero
    Q <= 1'b0;
else
    Q <= D; //nonblocking assignment for data input
end
endmodule
