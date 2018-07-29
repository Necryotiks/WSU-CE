`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2018 04:28:04 PM
// Design Name: 
// Module Name: d_latch
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


module d_latch(
input D,G,
output Q,Qn
    );
wire D_int,Q_int,Qn_int,R;

assign D_int = ~(D & G);
assign R = ~(G & ~D);
assign Q_int = (~D_int | ~Qn_int);
assign Qn_int = ~(R & Q_int);
assign Q = Q_int;
assign Qn = Qn_int;
endmodule
