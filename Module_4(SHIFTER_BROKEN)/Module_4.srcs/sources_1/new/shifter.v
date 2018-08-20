`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 11:19:29 PM
// Design Name: 
// Module Name: shifter
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


module shifter(
input [7:0] I,
input D,
input R,
input F,
input En,
output reg [7:0] Y
);
//only difference betwenn rotate and shift is fill signal
//FIX THIS
always @ (*)
begin
if (En == 0) //No Action
    Y = I;
else
    if (R == 0) //No rotate
        if(D ==0) //shift left
            Y[0] = F;
            Y[7:1] = I[6:0];
        if(D != 0) //shift right
            Y[7] = F; 
            Y[6:0] = I[6:0];
     if(R!=0)// rotate
        if(D == 0)
            Y[0] = I[7];
            Y[7:1] = I[6:0];
        if(D != 0) //shift right
            Y[7] = I[0]; 
            Y[6:0] = I[7:1];
            //Y = (D == 0) ? {I[2:0], I[3]} : {I[0], I[3:1]}; //ONE DAY I WILL EXPAND THIS.
end
endmodule
