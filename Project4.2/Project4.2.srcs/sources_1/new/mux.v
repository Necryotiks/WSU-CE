`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/19/2018 05:11:40 PM
// Design Name: 
// Module Name: mux
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
module mux(
input I0, I1, I2, I3, S0, S1,
output reg Y
);
always@(*)
begin
if(S0 == 0 & S1 == 0)
    Y = I0;
else if (S0 == 1 & S1 == 0)
    Y = I1;
else if (S0 == 0 & S1 == 1)
    Y = I2;
else
    Y = I3;    
end
endmodule
