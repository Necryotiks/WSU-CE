`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2018 12:17:55 PM
// Design Name: 
// Module Name: pipo_tb
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


module pipo_tb(
    );
    
    reg [7:0] i_SW;
    reg i_RST;
    reg i_BTN;
    wire [7:0] o_LED;
    
    PIPO uut(
    .i_SW(i_SW),
    .i_RST(i_RST),
    .i_BTN(i_BTN),
    .o_LED(o_LED)
        );
    initial begin
    i_RST =1;
    i_SW = 8'b00000001;
    i_BTN = 0;
    #50;
    i_RST = 0;
    #50;
    i_SW = 8'b00000101;
    end
    
    always
        #50 i_BTN = ~i_BTN;
endmodule
