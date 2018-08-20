`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2018 01:36:34 PM
// Design Name: 
// Module Name: piso_tb
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


module piso_tb();

reg [7:0] r_SW;
reg r_SFT_LD;
reg r_CLK;
wire [7:0] w_LED;

PISO uut(
.i_SW(r_SW),
.i_SFT_LD(r_SFT_LD),
.i_CLK(r_CLK),
.o_LED(w_LED)
);
initial begin
    r_SFT_LD = 0;
    r_SW = 8'b11000001;
    r_CLK = 0;
    #20;
    //#20 r_SFT_LD =1;
end

always
    #20 r_CLK = ~r_CLK;
endmodule
