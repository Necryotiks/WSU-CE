`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2019 01:24:22 PM
// Design Name: 
// Module Name: PWM_CLK_EN
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


module PWM_CLK_EN(
    input i_CLK,
    input [27:0] i_PWM_FREQ,
    output reg o_CLK_EN
    );
    
    reg [27:0] r_COUNT = 0;
    always@(posedge i_CLK)
            begin
            if(r_COUNT == i_PWM_FREQ-1)
                begin
                r_COUNT <= 0;
                o_CLK_EN <= 1;
                end
             else
                begin
                r_COUNT <= r_COUNT + 1;
                o_CLK_EN <= 0;
                end
            end
endmodule
