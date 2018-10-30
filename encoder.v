`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2018 10:09:02 PM
// Design Name: 
// Module Name: encoder
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


module encoder(
 input [3:0] Is,
input Ein,
output reg [1:0] Y,
output reg GS,
output reg Eout
    );
 
always@(Is,Ein)
begin
if (Ein ==1)
    if(Is[3] == 1)
        Y = 2'b11;
    else if(Is[2] ==1)
        Y = 2'b10; 
    else if (Is[1] ==1)
        Y = 2'b01;
else
    Y =2'b00;
end
always@(Is,Ein)
begin
  if (Ein == 1 && Is == 0)
      Eout = 1'b1;
  else
      Eout = 1'b0;
end
always@(Ein,Is)
begin
    if(Ein == 1 && Is != 0)
        GS = 1'b1;
    else
        GS = 1'b0;
end
endmodule
