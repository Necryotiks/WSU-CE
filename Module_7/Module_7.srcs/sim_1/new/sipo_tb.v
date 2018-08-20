`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2018 04:31:51 PM
// Design Name: 
// Module Name: sipo_tb
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


module sipo_tb(
    );
    
    reg r_SDI;
    reg r_CLK;
    wire [7:0] w_LED;
    
    SIPO uut(
    .i_SDI(r_SDI),
    .i_CLK(r_CLK),
    .o_LED(w_LED)
    );
    initial begin
    r_SDI = 0;
    r_CLK = 0;
    #20;
    r_SDI = 1;
    end
    
    
always
    #20 r_CLK = ~r_CLK;
     
    
endmodule
