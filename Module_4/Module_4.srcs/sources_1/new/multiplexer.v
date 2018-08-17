`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 08:32:56 PM
// Design Name: 
// Module Name: multiplexer
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


module multiplexer(
//input [7:0] i_I0, //two bits to light up 2 leds.
//input [7:0] i_I1,
//input [7:0] i_I2, //SIM
//input [7:0] i_I3,
//input [1:0] i_Sel,
//output reg [7:0] o_Y
input [1:0] i_I0, //two bits to light up 2 leds.
input [1:0] i_I1,
input [1:0] i_I2,
input [1:0] i_I3, //LIVE
input [1:0] i_Sel,
output reg [1:0] o_Y
    );
    //FINISH
always@(*)
begin
    case(i_Sel)
        2'b00: o_Y = i_I0;
        2'b01: o_Y = i_I1;
        2'b10: o_Y = i_I2;
        2'b11: o_Y = i_I3;
    endcase
end   
endmodule
