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
input i_CLK,
input [7:0] I,
input En,
input D,
input R,
input F,
output reg [7:0] Y
);
//only difference betwenn rotate and shift is fill signal
//FIX THIS
parameter v_SHIFTVAL = 2;
integer i;
always @ (posedge (i_CLK))
begin
    if (En == 0) //No Action
        Y = I;
    else
        begin
            if (R == 0) //No rotate
                begin //DONT FORGET BEGIN AND END. OPTIMZER WILL REMOVE SOME INPUTS OTHERWISE
                if(D ==0) //shift left
                    begin
                    Y[0] = F;
                    Y[7:1] = I[6:0];
                    end
                if(D != 0) //shift right
                    begin
                    Y[7] = F; 
                    Y[6:0] = I[7:1];
                    end
                end
            else // rotate
                begin
                if(D == 0)
                    begin
                    Y[0] = I[7];
                    Y[7:1] = I[6:0];
                    end
                if(D != 0) //shift right
                    begin
                    Y[7] = I[0]; 
                    Y[6:0] = I[7:1];
                    end
                end
        end
end
endmodule
