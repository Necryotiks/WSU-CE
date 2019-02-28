`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2018 05:23:10 PM
// Design Name: 
// Module Name: clk_testbench
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


module clk_testbench;
reg clk,rst;
wire led;
clkdiv uut (
        .clk(clk),
        .rst(rst),
        .led(led)
    );

    always
        #5 clk = ~clk; //5 ns high, then 5 ns low

    initial begin
        // Initialize Inputs
        clk = 0;
        rst = 1;

        #10 rst = 0;

        // Wait 100 ns for global reset to finish
        #100;

    end
endmodule
