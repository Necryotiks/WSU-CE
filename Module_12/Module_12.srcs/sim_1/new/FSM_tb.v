`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2018 04:23:17 PM
// Design Name: 
// Module Name: FSM_tb
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


module FSM_tb(

    );
    
    reg i_CLK1KHZ = 1;
    reg i_RST,i_Start,i_React;
    reg [12:0] CVAL;
    
    wire o_CEN,o_SWEN;
    wire [1:0] rdy;
    
    RTM_FSM uut(
    .i_CLK1KHZ(i_CLK1KHZ),
    .i_RST(i_RST),
    .i_Start(i_Start),
    .i_React(i_React),
    .i_CVAL(CVAL),
    .o_Ready(rdy),
    .o_CEN(o_CEN),
    .o_SWEN(o_SWEN)
    );
    
    always
         #40 i_CLK1KHZ = ~i_CLK1KHZ;
         
         
     initial begin
     i_RST = 1;
     #20;
     i_RST = 0;
     i_React = 0;
     CVAL = 13'd10;
     i_Start = 1'd0;
     #200;
     i_Start = 1'd1;
     #100;
     end
        
endmodule
