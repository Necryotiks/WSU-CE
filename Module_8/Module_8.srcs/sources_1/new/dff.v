`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2018 11:31:27 AM
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
    input i_CLK,
    input i_RST,
    input i_D,
    output reg o_Q
    );
    
    always@(posedge(i_CLK))
    begin
        if(i_RST == 1)
            o_Q <= 1'b0;
        else
           o_Q <= i_D;
    end
endmodule
