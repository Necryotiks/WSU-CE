`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 05:36:58 PM
// Design Name: 
// Module Name: temp_indicator
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


module temp_indicator(
    input [7:0] i_SW,
    output o_LED
    );
    
    
    //betwenn 160 and 186
    assign o_LED = 
     (i_SW[7] & ~i_SW[6] & i_SW[5] & ~i_SW[4]) | 
     (i_SW[7] & ~i_SW[6] & i_SW[5] & ~i_SW[3]) |
     (i_SW[7] & ~i_SW[6] & i_SW[5] & ~i_SW[2] & ~i_SW[1]) |
     (i_SW[7] & ~i_SW[6] & i_SW[5] & ~i_SW[2] & ~i_SW[0]);
     
     
endmodule
