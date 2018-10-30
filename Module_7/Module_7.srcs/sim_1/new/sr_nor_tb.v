`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2018 11:12:48 AM
// Design Name: 
// Module Name: sr_nor_tb
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


module sr_nor_tb(
    );
    reg R,S;
    wire Q,Qn;
    
    sr_latch_nor srlnor(
    .Q(Q),
    .Qn(Qn),
    .S(S),
    .R(R)
    );
    
    //Simulate the NAND & NOR Cell SR-Latch
    initial begin
     // Initialize Inputs
       S = 1;
       R = 1;
    
       // Add stimulus here
       #100 S = 0;
       #100 S = 1;
       #100 R = 0;
       #100 R = 1;
       #100 S = 0;
            R = 0;
       #100 S = 1;
            R = 1;
       #100 S = 0;
            R = 0;
       #100 ;
    end
endmodule
