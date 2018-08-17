`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 05:13:12 PM
// Design Name: 
// Module Name: majority_of_five
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


module majority_of_five(
    input [4:0] i_SW,
    output o_LED
    );
    
//       NOTE COMPRESSED VAR IS COUNTED IN BOTH POS AND SOP
// SOP
     assign o_LED = (i_SW[0] & i_SW[1] & i_SW[2]) | //ABC
                  (i_SW[0] & i_SW[1] & i_SW[3]) | //ABD
                  (i_SW[0] & i_SW[2] & i_SW[3]) | //ACD
                  (i_SW[1] & i_SW[2] & i_SW[3]) | //BCD
                  (i_SW[0] & i_SW[1] & i_SW[4]) | //ABE
                  (i_SW[0] & i_SW[3] & i_SW[4]) | //ADE
                  (i_SW[0] & i_SW[2] & i_SW[4]) | //ACE
                  (i_SW[1] & i_SW[2] & i_SW[4]) | //BCE
                  (i_SW[2] & i_SW[3] & i_SW[4]) | //CDE
                  (i_SW[1] & i_SW[3] & i_SW[4]);  //BDE
endmodule
