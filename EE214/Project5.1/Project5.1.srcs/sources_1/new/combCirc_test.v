`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2018 01:06:58 PM
// Design Name: 
// Module Name: combCirc_test
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


module combCirc_test;
reg A,B,C;
wire X;
integer i =0;
combCirc uut(
.A(A),
.B(B),
.C(C),
.X(X)
);
initial begin
A=0;
B=0;
C=0;
#100
for(i=0;i<4;i=i+1)
    begin
//    A<=i;//nonblocking statements happen parallel.
//    C<=i;
    {A,C} =i;
    #5 B =1;
    #5 B =0;
    #5; //no op
    end
end
endmodule
