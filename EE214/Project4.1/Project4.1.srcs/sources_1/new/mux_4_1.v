`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2018 09:44:54 PM
// Design Name: 
// Module Name: mux_4_1
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

`timescale 1ns/1ps
module mux_4_1(
output reg [1:0] led,
//input [1:0] I0, //two bits to light up 2 leds.
//input [1:0] I1,
//input [1:0] I2,
//input [1:0] I3,
input [7:0] I, //Why cant we just declare it as an 8-bit bus instead of 4 2-bit busses.
input [1:0] Sel
    );
    always @ (Sel, I)
    begin
        case (Sel)
            2'b00: //switch statement for the selector switch.
                led = I[1:0];
            2'b01:
                led = I[3:2];
            2'b10:
                led = I[5:4];
            2'b11:
                led = I[7:6];
            default:
                led = 2'b00;
        endcase
    end
endmodule
