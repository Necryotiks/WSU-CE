`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2018 02:49:43 PM
// Design Name: 
// Module Name: PISO_wrapper
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


module PISO_wrapper(
input [7:0] i_SW,
input [1:0] i_SFT_LD,
input i_CLK,
output [15:0] o_LED
    );
wire r_CLK;


reg [27:0] counter1;

always @ (posedge i_CLK)
begin
    counter1 <= counter1 + 1;
end
assign r_CLK = counter1[27];    
PISO PISO_0(
.i_SW(i_SW),
.i_SFT_LD(i_SFT_LD[0]),
.i_CLK(r_CLK),
.o_LED(o_LED[7:0])
);

PISO PISO_1(
.i_SW(i_SW),
.i_SFT_LD(i_SFT_LD[1]),
.i_CLK(r_CLK),
.o_LED(o_LED[15:8])
);
endmodule
