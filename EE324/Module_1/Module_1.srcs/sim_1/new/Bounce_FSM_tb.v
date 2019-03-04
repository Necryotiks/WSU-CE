`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2019 12:02:53 AM
// Design Name: 
// Module Name: Bounce_FSM_tb
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


module Bounce_FSM_tb(

    );
    
    reg r_CLK = 1'd0;
    reg r_RST = 1'd0;
    reg r_Signal = 1'd0;
    wire w_CEN;
    wire [13:0] w_DATA;
    
    Bounce_Counter_FSM uut(
    .i_CLK(r_CLK),
    .i_RST(r_RST),
    .i_Signal(r_Signal),
    .o_CEN(w_CEN),
    .o_DATA(w_DATA)
    );
    
    always
        #1 r_CLK <= ~r_CLK;
    
    initial begin
    #1 r_RST = 1'd1;
    #5 r_RST = 1'd0;
    #1 r_Signal <= 0;
    #5 r_Signal <= 1;
    #100 r_Signal <= 0;
    #1 r_RST = 1'd1;
    #200 $finish;
    end
endmodule
