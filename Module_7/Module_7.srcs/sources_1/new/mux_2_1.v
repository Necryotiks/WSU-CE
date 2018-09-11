`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2018 06:48:17 PM
// Design Name: 
// Module Name: mux_2_1
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


module mux_2_1(
    input i_CLK,
    input i_IN_0,
    input i_IN_1,
    input i_SEL,
    output reg o_Y
    );
    
    always@(posedge(i_CLK))
    begin
        if (i_SEL == 0)
            begin
                o_Y = i_IN_0;
            end
        else
            begin
                o_Y = i_IN_1;
            end
    end
endmodule
