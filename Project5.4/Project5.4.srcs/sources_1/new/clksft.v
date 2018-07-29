`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2018 10:29:43 PM
// Design Name: 
// Module Name: clksft
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


module clksft(
input clkin,rst,fun_mode,
output reg [15:0] leds
    );

reg [15:0] i;
integer j;
initial 
    begin
    i = {{15{1'b0}},1'b1}; // i = 1
    j = 2'd0;
    end
always @ (posedge(clkin))
begin
if (i == {15{1'b0}}) //if I is zero, i is now one. bit replication is nice
    i = {{15{1'b0}},1'b1};
casez({fun_mode,rst,i})
    {2'b00,{16{1'b?}}}: leds = i;
    {2'b01,{16{1'b?}}}: leds = {16{1'b0}};
    {2'b10,{16{1'b?}}}: 
        begin
        
        case(j)
            2'd0: leds = {8{2'b01}}; //
            2'd1: leds = {8{2'b10}};
            2'd2: leds = {{8{1'b1}},{8{1'b0}}};// bit replication with concatenation.
            2'd3: leds = {{8{1'b0}},{8{1'b1}}};
        endcase
        j = j + 1;
        j = j % 4;
        end
    {2'b11,{16{1'b?}}}: leds = {16{1'b0}}; // rst is one, then leds are off.
endcase
i = i << 1;
end




endmodule
