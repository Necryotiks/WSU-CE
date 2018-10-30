`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 04:32:47 PM
// Design Name: 
// Module Name: circuit_id_SOP
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


module circuit_id_SOP(
    output [3:0]  o_LED,
    input [7:0] i_SW
        );
        //SOP 
        assign o_LED[0] = (i_SW[1] & ~i_SW[0]) | //Circuit I
        (~i_SW[1] & i_SW[0]);
        
        assign o_LED[1] = (~i_SW[3] & ~i_SW[2] & ~i_SW[1]) |  //Circuit II
        (~i_SW[3] & i_SW[2] & i_SW[1]) |
        (i_SW[3] & ~i_SW[2] & i_SW[1]);
        
        assign o_LED[2] = (~i_SW[7] & ~i_SW[6] & ~i_SW[5] & i_SW[4]) | //Circuit III
        (~i_SW[7] & ~i_SW[6] & i_SW[5] & i_SW[4]) | 
        (~i_SW[7] & i_SW[6] & ~i_SW[5] & ~i_SW[4]) | 
        (i_SW[7] & i_SW[6] & i_SW[5] & i_SW[4]);
        
        assign o_LED[3] = (~i_SW[6] & ~i_SW[5] & ~i_SW[4] & i_SW[3]) | //Circuit IV
        (~i_SW[6] & i_SW[5] & ~i_SW[4] & ~i_SW[3]) | 
        (i_SW[6] & i_SW[5] & ~i_SW[4] & ~i_SW[3]) | 
        (i_SW[6] & i_SW[5] & i_SW[4] & ~i_SW[3]) |
        (i_SW[6] & ~i_SW[5] & ~i_SW[4] & i_SW[3]) | 
        (~i_SW[6] & i_SW[5] & i_SW[4] & ~i_SW[3]) | 
        (i_SW[6] & ~i_SW[5] & i_SW[4] & i_SW[3]) |
        (~i_SW[6] & ~i_SW[5] & i_SW[4] & i_SW[3]);
endmodule
