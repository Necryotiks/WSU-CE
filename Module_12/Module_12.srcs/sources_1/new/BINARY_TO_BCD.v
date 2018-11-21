`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2018 05:13:25 PM
// Design Name: 
// Module Name: BINARY_TO_BCD
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


module BINARY_TO_BCD(
    input [13:0] i_DATA,
    output [3:0] o_Digit1,
    output [3:0] o_Digit2,
    output [3:0] o_Digit3,
    output [3:0] o_Digit4
    );
    
    wire [13:0] w_DATA;
    reg [3:0] r_Digit1 = 4'd0;
    reg [3:0] r_Digit2 = 4'd0;
    reg [3:0] r_Digit3 = 4'd0;
    reg [3:0] r_Digit4 = 4'd0;
    reg [29:0] r_SHIFTER = 30'd0;
    integer i;
    
    assign w_DATA = i_DATA;
    assign o_Digit1 = r_Digit1;
    assign o_Digit2 = r_Digit2;
    assign o_Digit3 = r_Digit3;
    assign o_Digit4 = r_Digit4;
    
    always@(w_DATA)
    begin
        r_SHIFTER[13:0] = w_DATA;
        
        for(i = 0; i < 14; i = i +1)
        begin
            if(r_SHIFTER[17:14] >= 5)
                r_SHIFTER[17:14] = r_SHIFTER[17:14] + 3;
            if(r_SHIFTER[21:18] >= 5)
                r_SHIFTER[21:18] = r_SHIFTER[21:18] + 3;
            if(r_SHIFTER[25:22] >= 5)
                r_SHIFTER[25:22] = r_SHIFTER[25:22] + 3;
            if(r_SHIFTER[29:26] >= 5)
                r_SHIFTER[29:26] = r_SHIFTER[29:26] + 3; 
           r_SHIFTER = r_SHIFTER << 1;                 
        end
        r_Digit1 = r_SHIFTER[29:26];
        r_Digit2 = r_SHIFTER[25:22];
        r_Digit3 = r_SHIFTER[21:18];
        r_Digit4 = r_SHIFTER[17:14];
    end
endmodule
