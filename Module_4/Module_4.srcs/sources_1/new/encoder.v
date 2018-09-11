`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 09:45:24 PM
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
input [3:0] I,
input Enable_input,
output reg [1:0] Y,
output reg Group_signal,
output reg Enable_output
    );
 
always@(I,Enable_input)
begin
if (Enable_input ==1)
    if(I[3] == 1)
        Y = 2'b11;
    else if(I[2] ==1)
        Y = 2'b10; 
    else if (I[1] ==1)
        Y = 2'b01;
    else 
        Y = 2'b00;
else
    Y =2'b00;
end

always@(I,Enable_input)
begin
  if (Enable_input == 1 && I == 0)
      Enable_output = 1'b1;
  else
      Enable_output = 1'b0;
end

always@(Enable_input,I)
begin
    if(Enable_input == 1 && I != 0)
        Group_signal = 1'b1;
    else
        Group_signal = 1'b0;
end
endmodule
