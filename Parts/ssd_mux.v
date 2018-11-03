`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Compo_Anodesy: 
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
output  [3:0] o_Out,
output  [3:0] o_Anodes
    );
    reg [1:0] r_CYCLE;
    reg [26:0] r_SUBCLK;
    
    wire w_CLK;
    wire [3:0] w_Digit_1;
    wire [3:0] w_Digit_2;
    wire [3:0] w_Digit_3;
    wire [3:0] w_Digit_4;
    reg [3:0] r_Out;
    reg [3:0] r_Anodes;
    
    assign w_CLK = i_CLK;
    assign w_Digit_1 = i_Digit_1;
    assign w_Digit_2 = i_Digit_2;
    assign w_Digit_3 = i_Digit_3;
    assign w_Digit_4 = i_Digit_4;
    assign o_Out = r_Out;
    assign o_Anodes = r_Anodes;
    
    always@(posedge w_CLK)
    begin
        if(r_SUBCLK[26] == 1'b1)
             r_CYCLE = r_CYCLE + 1'b1;
        else
           r_SUBCLK = r_SUBCLK + 1'b1;
    end 
   always@ (r_CYCLE,w_Digit_1,w_Digit_2,w_Digit_3,w_Digit_4)
        begin
            case(r_CYCLE)
            2'b00: 
            begin
                r_Out = w_Digit_1;
                r_Anodes = 4'b0111;
            end
            2'b01: 
            begin
                r_Out = w_Digit_2;
                r_Anodes = 4'b1011;
            end
            2'b10: 
            begin
                r_Out = w_Digit_3;
                r_Anodes = 4'b1101;
            end
            2'b11: 
            begin
                r_Out = w_Digit_4;
                r_Anodes = 4'b1110;
            end
            default: r_Out = 0;
            endcase
        end
endmodule
