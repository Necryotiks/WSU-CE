`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 05:48:06 PM
// Design Name: 
// Module Name: temp_indicator_tb
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


module temp_indicator_tb(
    );
 reg [7:0] r_SW;
 wire w_LED;
 integer k;
 
 temp_indicator uut(
 .i_SW(r_SW),
 .o_LED(w_LED)
 );
 
 initial begin
 r_SW = 8'd0;
 
    for(k = 0; k < 255; k = k + 1)
        #20 r_SW = k;
    #20 $finish;
 end
endmodule
