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
input i_Digit_1_clk,
input i_Digit_2_clk,
input i_Digit_3_clk,
input i_Digit_4_clk,
input [1:0] Sel,
output reg o_Clk,
output reg [3:0] o_Anodes
    );
    
    always@ (posedge(Sel))
        begin
            case(Sel)
            default: o_Clk = 0;
            endcase
        end
endmodule
