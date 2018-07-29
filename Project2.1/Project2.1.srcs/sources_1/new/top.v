`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2018 01:32:04 PM
// Design Name: 
// Module Name: top
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


module top(
output [3:0] led,
input [7:0] sw
    );
//    //SOP 
//    assign led[0] = (sw[1] & ~sw[0]) | 
//    (~sw[1] & sw[0]);
    
//    assign led[1] = (~sw[3] & ~sw[2] & ~sw[1]) | 
//    (~sw[3] & sw[2] & sw[1]) |
//    (sw[3] & ~sw[2] & sw[1]);
    
//    assign led[2] = (~sw[7] & ~sw[6] & ~sw[5] & sw[4]) |
//    (~sw[7] & ~sw[6] & sw[5] & sw[4]) | 
//    (~sw[7] & sw[6] & ~sw[5] & ~sw[4]) | 
//    (sw[7] & sw[6] & sw[5] & sw[4]);
    
//    assign led[3] = (~sw[6] & ~sw[5] & ~sw[4] & sw[3]) |
//    (~sw[6] & sw[5] & ~sw[4] & ~sw[3]) | 
//    (sw[6] & sw[5] & ~sw[4] & ~sw[3]) | 
//    (sw[6] & sw[5] & sw[4] & ~sw[3]) |
//    (sw[6] & ~sw[5] & ~sw[4] & sw[3]) | 
//    (~sw[6] & sw[5] & sw[4] & ~sw[3]) | 
//    (sw[6] & ~sw[5] & sw[4] & sw[3]) |
//    (~sw[6] & ~sw[5] & sw[4] & sw[3]);

    //POS
    assign led[0] = (sw[1] | sw[0]) & (~sw[1] | ~sw[0]);
    
    assign led[1] = (sw[3] | sw[2] | ~sw[1]) & 
    (sw[3] | ~sw[2] | sw[1]) &
    (~sw[3] | sw[2] | sw[1]) & 
    (~sw[3] | ~sw[2] | sw[1] ) &
    (~sw[3] | ~sw[2] | ~sw[1]);
    
    assign led[2] = (sw[7] | sw[6] | sw[5] | sw[4]) & 
    (sw[7] | sw[6] | ~sw[5] | sw[4]) &
    (sw[7] | ~sw[6] | sw[5] | ~sw[4]) & 
    (sw[7] | ~sw[6] | ~sw[5] | sw[4]) &
    (sw[7] | ~sw[6] | ~sw[5] | ~sw[4]) & 
    (~sw[7] | sw[6] | sw[5] | sw[4]) &
    (~sw[7] | sw[6] | sw[5] | ~sw[4]) & 
    (~sw[7] | sw[6] | ~sw[5] | sw[4]) &
    (~sw[7] | sw[6] | ~sw[5] | ~sw[4]) & 
    (~sw[7] | ~sw[6] | sw[5] | sw[4]) &
    (~sw[7] | ~sw[6] | sw[5] | ~sw[4]) & 
    (~sw[7] | ~sw[6] | ~sw[5] | sw[4]);
    
    assign led[3] = (sw[6] | sw[5] | sw[4] | sw[3]) & 
    (sw[6] | sw[5] | ~sw[4] | sw[3]) &
    (~sw[6] | sw[5] | sw[4] | sw[3]) &
    (~sw[6] | ~sw[5] | ~sw[4] | ~sw[3]) &
    (~sw[6] | sw[5] | ~sw[4] | sw[3]) &
    (sw[6] | ~sw[5] | ~sw[4] | ~sw[3]) &
    (sw[6] | ~sw[5] | sw[4] | ~sw[3]) &
    (~sw[6] | ~sw[5] | sw[4] | ~sw[3]);
endmodule
