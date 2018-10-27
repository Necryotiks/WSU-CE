`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2018 01:00:28 PM
// Design Name: 
// Module Name: ssd_mux
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


module ssd_mux(
input [3:0] i_Digit_1,
input [3:0] i_Digit_2,
input [3:0] i_Digit_3,
input [3:0] i_Digit_4,
input i_CLK,
output reg [3:0] o_Out,
output reg [3:0] an
    );
    reg [1:0] r_CYCLE;
    reg [16:0] r_SUBCLK;
    
    always@(posedge i_CLK)
    begin
        if(r_SUBCLK[16] == 1'b1)
             r_CYCLE <= r_CYCLE + 1'b1;
        else
           r_SUBCLK <= r_SUBCLK + 1'b1;
    end 
   always@ (r_CYCLE,i_Digit_1,i_Digit_2,i_Digit_3,i_Digit_4)
        begin
            case(r_CYCLE)
            2'b00: 
            begin
            o_Out = i_Digit_1;
            an = 4'b0111;
            end
            2'b01: 
            begin
            o_Out = i_Digit_2;
            an = 4'b1011;
            end
            2'b10: 
            begin
            o_Out = i_Digit_3;
            an = 4'b1101;
            end
            2'b11: 
            begin
            o_Out = i_Digit_4;
            an = 4'b1110;
            end
            default: o_Out = 0;
            endcase
        end
endmodule
