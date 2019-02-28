`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2018 10:24:40 PM
// Design Name: 
// Module Name: BCD2BIN_TB
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


module BCD2BIN_TB(

    );
    
    reg r_CLK = 0;
    reg [3:0] r_Digit1;
    reg [3:0] r_Digit2;
    reg [3:0] r_Digit3;
    reg [3:0] r_Digit4;
    wire [13:0] w_DATA;
    BCD_TO_BINARY UUT (
    .i_CLK(r_CLK),
    .i_Digit1(r_Digit1),
    .i_Digit2(r_Digit2),
    .i_Digit3(r_Digit3),
    .i_Digit4(r_Digit4),
    .o_DATA(w_DATA)
    );
    
    always
        #20 r_CLK = ~r_CLK;
        
    initial begin
    r_Digit1 = 4'd1;
    r_Digit2 = 4'd1;
    r_Digit3 = 4'd1;
    r_Digit4 = 4'd1;
    #20;
    r_Digit1 = 4'd1;
    r_Digit2 = 4'd1;
    r_Digit3 = 4'd1;
    r_Digit4 = 4'd2;
    #20;
    $finish;
    end
    
   
    
endmodule
