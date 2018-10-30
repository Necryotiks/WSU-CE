`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2018 06:08:19 PM
// Design Name: 
// Module Name: clksft_test
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


module clksft_test;

reg rst = 0;
reg fun_sw = 0;
reg clk = 0;
wire [15:0] leds;
integer i;


clksft_alt uut(
.clkin(clk),
//.fun_mode(fun_sw),
.rst(rst),
.leds(leds)
);



always
    #20 clk = ~clk;
    
initial 
begin
    #20 rst = ~rst;
    #20 rst = ~rst;
    #20 rst = ~rst;
    #20 rst = ~rst;
    #20 rst = ~rst;
    #20 rst = ~rst;
    #20 rst = ~rst;
    #20 rst = ~rst;
    #20 rst = ~rst;
    #20 rst = ~rst;
    #20 rst = ~rst;
    #20 rst = ~rst;
    #100;
    #20 $finish;
end
endmodule

