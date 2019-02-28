`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2018 10:12:51 PM
// Design Name: 
// Module Name: accum_tb
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


module accum_tb(
    );
    
       reg w_CLK = 0;
     reg w_CLK_EN;
     reg w_RST;
     reg [13:0] w_DATA;
     wire [13:0] r_OUT;
    
    Accumuator uut (
    .i_CLK(w_CLK),
    .i_CLK_EN(w_CLK_EN),
    .i_RST(w_RST),
    .i_DATA(w_DATA),
    .o_OUT(r_OUT)
    );
    
    always
        #20 w_CLK = ~w_CLK;
        
     initial begin
     w_RST = 1;
     w_CLK_EN = 0;
     w_DATA = 14'd1;
     #20;
     w_RST = 0;
     w_CLK_EN = 1;
     w_DATA = 14'd1;
     end
endmodule
