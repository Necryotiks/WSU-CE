`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2018 01:32:28 PM
// Design Name: 
// Module Name: sr_latch
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


module sr_latch_nand(
input S,R,
output Q,Qn
    );
 wire Q_int,Qn_int;
 assign #1 Q_int = ~(S & Qn_int);
 assign #1 Qn_int =  ~(R & Q_int);
 assign Q = Q_int;
 assign Qn = Qn_int;
endmodule
