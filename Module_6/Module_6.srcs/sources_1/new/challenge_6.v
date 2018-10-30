`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2018 09:53:10 PM
// Design Name: 
// Module Name: challenge_6
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


module challenge_6(
    input [3:0] i_SW,
    input i_CLK,
    output reg [15:0] o_LED
    );
    wire [3:0] w_SW; //needed for timing(apparently not)
    assign w_SW = i_SW;
always@(posedge(i_CLK))
begin
    case(w_SW)
    4'b0000: o_LED = 16'd1;
    4'b0001: o_LED = 16'd2;
    4'b0010: o_LED = 16'd4;
    4'b0011: o_LED = 16'd8;
    4'b0100: o_LED = 16'd16;
    4'b0101: o_LED = 16'd32;
    4'b0110: o_LED = 16'd64;
    4'b0111: o_LED = 16'd128;
    4'b1000: o_LED = 16'd256;
    4'b1001: o_LED = 16'd512;
    4'b1010: o_LED = 16'd1024;
    4'b1011: o_LED = 16'd2048;
    4'b1100: o_LED = 16'd4096;
    4'b1101: o_LED = 16'd8192;
    4'b1110: o_LED = 16'd16384;
    4'b1111: o_LED = 16'd32768;
    endcase
end
endmodule

