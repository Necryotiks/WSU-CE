`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2018 09:00:32 PM
// Design Name: 
// Module Name: SIPO_wrapper
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


module SIPO_wrapper(
    input i_SDI,
    input i_RST,
    input i_CLK,
    output [7:0] o_LED
    );
    
    wire w_CLK;
    wire w_RST;
    wire w_SDI;
    wire [7:0] w_LED;
    
     assign w_CLK = i_CLK;
     assign w_RST = i_RST;
     assign w_SDI = i_SDI;
     assign o_LED = w_LED;
     
     SIPO SIPO_0(
     .i_CLK(w_CLK),
     .i_SDI(w_SDI),
     .i_RST(w_RST),
     .o_LED(w_LED)
     );
endmodule
