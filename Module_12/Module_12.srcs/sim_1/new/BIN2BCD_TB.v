`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2018 10:39:15 PM
// Design Name: 
// Module Name: BIN2BCD_TB
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


module BIN2BCD_TB(

    );
        
    reg r_CLK = 0;
    wire [3:0] r_Digit1;
    wire [3:0] r_Digit2;
    wire [3:0] r_Digit3;
    wire [3:0] r_Digit4;
    reg [13:0] w_DATA = 14'd1111;
    BINARY_TO_BCD UUT (
    .o_Digit1(r_Digit1),
    .o_Digit2(r_Digit2),
    .o_Digit3(r_Digit3),
    .o_Digit4(r_Digit4),
    .i_DATA(w_DATA)
    );
    
    always
        #20 r_CLK = ~r_CLK;
        
    initial begin
    #20;

    #20;
    $finish;
    end
endmodule
