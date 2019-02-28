`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2018 04:01:50 PM
// Design Name: 
// Module Name: sr_latch_nor
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


module sr_latch_nor(
input S,R,
output Q,Qn
    );
 wire Q_int,Qn_int;
 assign #1 Qn_int = ~(S & Q_int);
 assign #1 Q_int =  ~(R & Qn_int);
 assign Q = Q_int;
 assign Qn = Qn_int;
endmodule