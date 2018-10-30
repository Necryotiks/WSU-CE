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
parameter v_SHIFTVAL = 1; //default is 0 + 1 bit shift
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
                    Y[v_SHIFTVAL:0] = F;
                    Y[7:v_SHIFTVAL+1] = I[7-v_SHIFTVAL-1:0];
                    end
                if(D != 0) //shift right
                    begin
                    Y[7:-v_SHIFTVAL+7] = F; 
                    Y[7-v_SHIFTVAL-1:0] = I[7:v_SHIFTVAL+1];
                    end
                end
            else // rotate
                begin
                if(D == 0)
                    begin
                    Y[v_SHIFTVAL:0] = I[7:7-v_SHIFTVAL];
                    Y[7:v_SHIFTVAL+1] = I[7-v_SHIFTVAL-1:0];
                    end
                if(D != 0) //shift right
                    begin
                    Y[7:-v_SHIFTVAL+7] = I[v_SHIFTVAL:0]; 
                    Y[7-v_SHIFTVAL-1:0] = I[7:v_SHIFTVAL+1];
                    end
                end
        end
end
endmodule
