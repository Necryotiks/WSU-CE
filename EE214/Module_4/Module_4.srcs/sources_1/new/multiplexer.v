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
input  i_I0, 
input  i_I1,
input  i_I2,
input  i_I3, //LIVE
input [1:0] i_Sel,
output reg [3:0] o_Y
    );

always@(*)
begin
    case(i_Sel)
        2'b00: 
        begin
        o_Y[0] = i_I0; //o-Y <= (0 => i_I0, others => '0');
        o_Y[3:1] = 3'b000;
        end
        2'b01:
        begin 
        o_Y[1] = i_I1;
        o_Y[0] = 1'b0;
        o_Y[3:2] = 2'b00;
        end
        2'b10: 
        begin
        o_Y[1:0] = 2'b00;
        o_Y[2] = i_I2;
        o_Y[3] = 1'b0;
        end
        2'b11: 
        begin
        o_Y[3] = i_I3;
        o_Y[2:0] = 3'b000;
        end
    endcase
end   
endmodule
