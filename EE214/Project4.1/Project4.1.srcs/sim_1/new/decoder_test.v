`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2018 09:02:58 PM
// Design Name: 
// Module Name: decoder_test
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


module decoder_test;
reg [2:0] In;
wire [7:0] Out;

decoder_3_8 uut(
.In(In),
.Out(Out)
);
integer i;

initial 
begin
for(i =0;i<8;i=i+1)
    begin
    #20 In = i; 
    end 
#10 $finish;
end 
endmodule
