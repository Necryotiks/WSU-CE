`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/15/2018 04:52:59 PM
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


module shifter (
    input [3:0] I,
    input D,
    input R,
    input F,
    input En,
    output reg [3:0] Y
);
always @ (I, En,D,F)
begin
    if (En == 0)
        Y = I;
    else
        if (R == 0)
            if(D ==0)
                Y[0] = F;
                Y[3:1] = I[2:0];
            if(D != 0)
                Y[0] = I[2:0];
                Y[3:1] = F;
         if(R!=0)
            if(D == 0)
                Y = (D == 0) ? {I[2:0], I[3]} : {I[0], I[3:1]};
end
endmodule
