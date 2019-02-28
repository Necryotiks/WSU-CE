`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2018 10:44:35 PM
// Design Name: 
// Module Name: CBCDivider_wrapper
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


module CBCDivider_wrapper(
    input i_CLK,
    input i_RST,
    output o_LED
    );
    
    wire w_CLK;
    wire w_RST;
    wire w_LED;
    wire w_SUBCLK_1KHZ;
    assign w_CLK = i_CLK;
    assign w_RST = i_RST;
    assign o_LED = w_LED;
    
    HZ_Counter #(.c_NUM(50000)) MHz_to_1KHz(
    .i_CLK(w_CLK),
    .i_RST(w_RST),
    .o_Out(w_SUBCLK_1KHZ)
    );
    
    HZ_Counter #(.c_NUM(1000)) KHz_to_1Hz(
    .i_CLK(w_SUBCLK_1KHZ),
    .i_RST(w_RST),
    .o_Out(w_LED)
    );
    
endmodule
