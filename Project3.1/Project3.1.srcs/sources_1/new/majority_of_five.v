`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2018 09:31:55 PM
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
output led,
input [4:0] sw
    );
    
<<<<<<< HEAD
    //NOTE COMPRESSED VAR IS COUNTED IN BOTH POS AND SOP
=======
>>>>>>> master
    //SOP
//    assign led = (sw[0] & sw[1] & sw[2]) | //ABC
//                 (sw[0] & sw[1] & sw[3]) | //ABD
//                 (sw[0] & sw[2] & sw[3]) | //ACD
//                 (sw[1] & sw[2] & sw[3]) | //BCD
//                 (sw[0] & sw[1] & sw[4]) | //ABE
//                 (sw[0] & sw[3] & sw[4]) | //ADE
//                 (sw[0] & sw[2] & sw[4]) | //ACE
//                 (sw[1] & sw[2] & sw[4]) | //BCE
//                 (sw[2] & sw[3] & sw[4]) | //CDE
//                 (sw[1] & sw[3] & sw[4]);  //BDE
    //POS
    assign led = (sw[4] | sw[1] | sw[0]) & //ABE
    (sw[4] | sw[3] | sw[2]) &              //CDE
    (sw[4] | sw[2] | sw[1]) &              //BCE
    (sw[4] | sw[3] | ~sw[2] | sw[0]) &     //A~CDE
    (sw[4] | sw[2] | sw[1] | ~sw[0]) &     //~ABCE
    (sw[4] | sw[3] | sw[1] | ~sw[0]) &     //~ABDE
    (sw[2] | sw[1] | sw[0]) &              //ABC
    (sw[3] | sw[2] | sw[0]) &              //ACD
    (sw[3] | sw[1] | sw[0]) &              //ABD
    (sw[3] | sw[2] | sw[1] | ~sw[0]);      //~ABCD
endmodule
