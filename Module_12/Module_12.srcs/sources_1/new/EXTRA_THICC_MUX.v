`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2018 08:15:47 PM
// Design Name: 
// Module Name: EXTRA_THICC_MUX
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



module EXTRA_THICC_MUX(
    input [3:0] i_SW_Digit_1,
    input [3:0] i_SW_Digit_2,
    input [3:0] i_SW_Digit_3,
    input [3:0] i_SW_Digit_4,
    input [3:0] i_T_Digit_1,
    input [3:0] i_T_Digit_2,
    input [3:0] i_T_Digit_3,
    input [3:0] i_T_Digit_4,
    
    input i_Sel,
    input i_CLK,
    
    output [3:0] o_Digit_1,
    output [3:0] o_Digit_2,
    output [3:0] o_Digit_3,
    output [3:0] o_Digit_4
    
    );
    
    
    wire w_Sel;
    wire w_CLK;
    wire [3:0] w_SW_Digit_1;
    wire [3:0] w_SW_Digit_2;
    wire [3:0] w_SW_Digit_3;
    wire [3:0] w_SW_Digit_4;
    wire [3:0] w_T_Digit_1;
    wire [3:0] w_T_Digit_2;
    wire [3:0] w_T_Digit_3;
    wire [3:0] w_T_Digit_4;
    reg [3:0] r_Digit_1;
    reg [3:0] r_Digit_2;
    reg [3:0] r_Digit_3;
    reg [3:0] r_Digit_4;
    
    
    assign w_Sel = i_Sel;
    assign w_CLK = i_CLK;
    assign w_SW_Digit_1 = i_SW_Digit_1;
    assign w_SW_Digit_2 = i_SW_Digit_2;
    assign w_SW_Digit_3 = i_SW_Digit_3;
    assign w_SW_Digit_4 = i_SW_Digit_4;
    assign w_T_Digit_1 = i_T_Digit_1;
    assign w_T_Digit_2 = i_T_Digit_2;
    assign w_T_Digit_3 = i_T_Digit_3;
    assign w_T_Digit_4 = i_T_Digit_4;
    assign o_Digit_1 = r_Digit_1;
    assign o_Digit_2 = r_Digit_2;
    assign o_Digit_3 = r_Digit_3;
    assign o_Digit_4 = r_Digit_4;
    
    always@(posedge w_CLK)
    begin
        case(w_Sel)
            1'b0:
                begin
                r_Digit_1 <= w_SW_Digit_1;
                r_Digit_2 <= w_SW_Digit_2;
                r_Digit_3 <= w_SW_Digit_3;
                r_Digit_4 <= w_SW_Digit_4;
                end
            1'b1:
                 begin
                 r_Digit_1 <= w_T_Digit_1;
                 r_Digit_2 <= w_T_Digit_2;
                 r_Digit_3 <= w_T_Digit_3;
                 r_Digit_4 <= w_T_Digit_4;
                 end
        endcase
    end
    
endmodule
