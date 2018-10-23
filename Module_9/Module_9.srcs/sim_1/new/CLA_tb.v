`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2018 02:56:39 PM
// Design Name: 
// Module Name: CLA_tb
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


module CLA_tb;

reg [3:0] r_SWL;
reg [3:0] r_SWU;
reg r_CLK;
reg r_RST;
wire [6:0] w_CATH;
wire [3:0] w_ANODE;
wire w_Overflow;

CLA_wrapper uut(
.i_SW_LOWER(r_SWL),
.i_SW_UPPER(r_SWU),
.i_CLK(r_CLK),
.i_RST(r_RST),
.o_Cathodes(w_CATH),
.o_Anodes(w_ANODE),
.o_Overflow(w_Overflow)
);

always
    #10 r_CLK = ~r_CLK;
    
initial begin
    #20 r_CLK = 0;
    #20 r_RST = 1;
    #20 r_RST = 0;
    #20 r_SWL = 4'd4;
    #20 r_SWU = 4'd3; 
end 

endmodule
