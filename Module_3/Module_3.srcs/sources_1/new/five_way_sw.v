`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 05:13:12 PM
// Design Name: 
// Module Name: five_way_sw
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


module five_way_sw(
    input [4:0] i_SW,
    output o_LED
    );
    
    assign o_LED = (~i_SW[4] & ~i_SW[3] & ~i_SW[2] & ~i_SW[1] & i_SW[0]) | //00001
    (~i_SW[4] & ~i_SW[3] & ~i_SW[2] & i_SW[1] & ~i_SW[0]) | //00010
    (~i_SW[4] & ~i_SW[3] & i_SW[2] & ~i_SW[1] & ~i_SW[0]) | //00100
    (~i_SW[4] & ~i_SW[3] & i_SW[2] & i_SW[1] & i_SW[0])   | //00111
    (~i_SW[4] & i_SW[3] & ~i_SW[2] & ~i_SW[1] & ~i_SW[0]) | //01000
    (~i_SW[4] & i_SW[3] & ~i_SW[2] & i_SW[1] & i_SW[0])   | //01011
    (~i_SW[4] & i_SW[3] & i_SW[2] & ~i_SW[1] & i_SW[0])   | //01101
    (~i_SW[4] & i_SW[3] & i_SW[2] & i_SW[1] & ~i_SW[0])   | //01110
    (i_SW[4] & ~i_SW[3] & ~i_SW[2] & ~i_SW[1] & ~i_SW[0]) | //10000
    (i_SW[4] & ~i_SW[3] & ~i_SW[2] & i_SW[1] & i_SW[0])   | //10011
    (i_SW[4] & ~i_SW[3] & i_SW[2] & ~i_SW[1] & i_SW[0])   | //10101
    (i_SW[4] & ~i_SW[3] & i_SW[2] & i_SW[1] & ~i_SW[0])   | //10110
    (i_SW[4] & i_SW[3] & ~i_SW[2] & ~i_SW[1] & i_SW[0])   | //11001
    (i_SW[4] & i_SW[3] & ~i_SW[2] & i_SW[1] & ~i_SW[0])   | //11010
    (i_SW[4] & i_SW[3] & i_SW[2] & ~i_SW[1] & ~i_SW[0])   | //11100
    (i_SW[4] & i_SW[3] & i_SW[2] & i_SW[1] &  i_SW[0]);     //11111  
endmodule
