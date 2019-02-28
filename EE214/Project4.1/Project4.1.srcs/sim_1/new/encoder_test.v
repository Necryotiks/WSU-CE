`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2018 09:14:34 PM
// Design Name: 
// Module Name: encoder_test
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


module encoder_test;
reg[3:0] Is;
reg Ein;
wire [1:0] Y;
wire GS;
wire Eout;

encoder uut(
.Is(Is),
.Ein(Ein),
.Y(Y),
.GS(GS),
.Eout(Eout)
);
integer i;
initial 
begin
for(i=0;i<32;i=i+1)
    begin
    #20 Is =i;
    #20 Ein = (i % 2);
    end 
#20 $finish;
end 
endmodule
