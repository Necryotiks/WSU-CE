`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2018 12:44:44 PM
// Design Name: 
// Module Name: temp_reg_mux
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


module temp_reg_mux(
    input [15:0] i_MUL,
    input [15:0] i_REG,
    input i_SWP,
    output reg [15:0] o_OUT
    );
    
    
    always@(*)
    begin
        if(i_SWP == 0)
            o_OUT <= i_MUL;
        else
            o_OUT <= i_REG;  
    end
endmodule
