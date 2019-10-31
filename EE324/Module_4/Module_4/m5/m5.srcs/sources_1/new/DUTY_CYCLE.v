`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2019 02:01:48 PM
// Design Name: 
// Module Name: DUTY_CYCLE
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


module DUTY_CYCLE(
    input wire i_CLK,
    input wire i_EN,
    input  wire [31:0] i_DC_VAL, //Duty cycle numerator
    input  wire [31:0] i_PULSE_WINDOW, //Duty cycle denominator
    output wire [31:0] o_SIGNAL_TAP,
    output reg o_OUT
    );
    
    
    reg [31:0] r_COUNT = 0;

assign o_SIGNAL_TAP = r_COUNT;
    always@(posedge i_CLK)
    begin

            if( r_COUNT == i_PULSE_WINDOW - 1)
                begin
                    r_COUNT <= 0;
                end
            else
                begin
                    r_COUNT <= r_COUNT + 1;
                end
    end
    always@(posedge i_CLK)
    begin
        if(r_COUNT < i_DC_VAL)
            begin
                o_OUT <= (1 & i_EN);
            end
        else
            begin
                o_OUT <= (0 & i_EN);
            end
    end
endmodule
