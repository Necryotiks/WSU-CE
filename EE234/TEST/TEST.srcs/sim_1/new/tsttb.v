`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2018 04:18:33 PM
// Design Name: 
// Module Name: tsttb
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


module tsttb(

    );
    
    wire F1;
    
    reg rst, clk;
    
    TEST_wrapper uut(
    .i_CLK(clk),
    .i_rst(rst),
    .o_Y(F1)
    );
    
    always
        #20 clk = ~clk;
    
    initial begin
    #20 clk = 0;
    #20 rst = 1;
    #20;
    #20 rst = 0;
    #100;
    end
endmodule
