`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 04:23:20 PM
// Design Name: 
// Module Name: challenge_1
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


module challenge_1(
    input i_SW,
    input [2:0] i_BTN,
    output reg [2:0] o_LED
    );
    
    always@ (*) // Challenge
    begin
        if (i_SW == 1)
            begin
            o_LED[0] = i_BTN[0];
            o_LED[1] = i_BTN[1];
            o_LED[2] = i_BTN[2];
            end
        else
            o_LED = 3'b000;      
    end
endmodule
