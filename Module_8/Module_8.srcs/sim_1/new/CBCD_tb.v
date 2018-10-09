`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2018 10:59:38 PM
// Design Name: 
// Module Name: CBCD_tb
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


module CBCD_tb;

reg r_CLK;
reg r_RST;
wire w_LED;

CBCDivider_wrapper uut(
.i_CLK(r_CLK),
.i_RST(r_RST),
.o_LED(w_LED)
);

always
    #1 r_CLK = ~r_CLK;
  
initial begin
#20 r_CLK = 0;
#20 r_RST = 1;
#20 r_RST = 0;
end  
    
endmodule
