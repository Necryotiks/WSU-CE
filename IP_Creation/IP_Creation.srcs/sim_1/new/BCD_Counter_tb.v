`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2019 01:05:24 AM
// Design Name: 
// Module Name: BCD_Counter_tb
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


module BCD_Counter_tb(

    );
    
    reg r_CLK = 1'b0;
    reg r_RST = 1'b0;
    reg r_CLK_EN = 1'b1;
    wire [3:0] w_OUT;
    wire w_NEXT_CLK_EN;
    
    BCD_Counter #(.DISPLAY_MODE("HEXEDECIMAL")) uut (
        .i_CLK(r_CLK),
        .i_RST(r_RST),
        .i_CLK_EN(r_CLK_EN),
        .o_OUT(w_OUT),
        .o_NEXT_CLK_EN(w_NEXT_CLK_EN)
    );
    
    
    
    always
        #20 r_CLK = ~r_CLK;
        
        
    initial begin
    
    
    #1000 $finish;
    
    end    
endmodule
