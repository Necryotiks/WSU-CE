`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2018 10:42:00 PM
// Design Name: 
// Module Name: ck_wrapper
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


module ck_wrapper(
input [1:0] sw,
input fun_sw,
input rst,
input clk,
output [15:0] led
    );
 wire cwire;   
 clkdiv cd1(
 .clk(clk),
 .rst(rst),
 .sw(sw),
 .led(cwire)
 );
 
 clksft cs1(
 .clkin(cwire),
 .rst(rst),
 .leds(led),
 .fun_mode(fun_sw)
 );
<<<<<<< HEAD

//clksft_alt cs2(
// .clkin(cwire),
// .rst(rst),
// .leds(led)
//);
=======
>>>>>>> master
endmodule
