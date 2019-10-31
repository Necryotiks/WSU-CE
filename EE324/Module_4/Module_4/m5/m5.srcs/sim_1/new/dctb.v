`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2019 12:04:53 PM
// Design Name: 
// Module Name: dctb
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


module dctb(

    );
    
    reg r_CLK = 0;
    reg r_RST = 0;
    reg [31:0] r_DC_VAL = 15;
    reg [31:0] r_PULSE_WIDTH  = 100;
    wire o_LED;
    wire[31:0] o_ST;
    
    DUTY_CYCLE uut(
    .i_CLK(r_CLK),
    .i_RST(r_RST),
    .i_EN(1),
    .i_DC_VAL(r_DC_VAL),
    .i_PULSE_WINDOW(r_PULSE_WIDTH),
    .o_SIGNAL_TAP(o_ST),
    .o_OUT(o_LED)
    );
    
    always
        r_CLK = #20 ~r_CLK;
        
    initial
    begin
    #5 r_RST =1;
    #20;
    #5 r_RST =0;
    #20;
    #100 r_DC_VAL = 32'd15;
    #100 r_PULSE_WIDTH = 32'd100;
    #1000;
    #20 $finish;
    end
endmodule
