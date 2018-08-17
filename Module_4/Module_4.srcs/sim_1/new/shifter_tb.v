`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 11:40:49 PM
// Design Name: 
// Module Name: shifter_tb
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


module shifter_tb(
    );
    reg [7:0] I;
    reg D;
    reg R;
    reg F;
    reg En;
    wire [7:0] Y;
    
    shifter uut(
    .I(I),
    .D(D),
    .R(R),
    .F(F),
    .En(En),
    .Y(Y)
    );
    integer i;
    initial 
    begin
    for(i=0;i<255;i=i+1)
        begin 
        #20 I = i;
        #20 D = i % 2;
        #20 R = i % 2;
        #20 F = i % 2;
        #20 En= i % 2;
        end
    #10 $finish;
    end
endmodule
