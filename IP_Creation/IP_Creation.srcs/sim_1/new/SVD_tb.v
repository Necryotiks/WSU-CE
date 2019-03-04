`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2019 01:58:05 AM
// Design Name: 
// Module Name: SVD_tb
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


module SVD_tb(

    );
    
    reg r_CLK = 1'd0;
    reg r_RST = 1'd0;
    reg r_CLK_EN = 1'd1;
    wire [3:0] w_DIGIT_1;
    wire [3:0] w_DIGIT_2;
    wire [3:0] w_DIGIT_3;
    wire [3:0] w_DIGIT_4;
    
    SVD_DRIVER uut(
    .i_CLK(r_CLK),
    .i_RST(r_RST),
    .i_CLK_EN(r_CLK_EN),
    .o_DIGIT_1(w_DIGIT_1),
    .o_DIGIT_2(w_DIGIT_2),
    .o_DIGIT_3(w_DIGIT_3),
    .o_DIGIT_4(w_DIGIT_4)
    );
    
    
    always
        #20 r_CLK = ~r_CLK;
        
        
        initial begin
        
        #10 r_RST = 1'd0;
        #10 r_RST = 1'd0;
        #1000 r_CLK_EN = 1'd0;
        #1000 $finish;
        end
endmodule
