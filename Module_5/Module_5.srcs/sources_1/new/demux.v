`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2018 07:43:43 PM
// Design Name: 
// Module Name: demux
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


module demux(
input En, I0, I1,
output reg Y0, Y1, Y2, Y3
    );
always@(*)
begin
case({En,I1,I0})
    3'b000: {Y3,Y2,Y1,Y0} = 4'b0000;
    3'b100: {Y3,Y2,Y1,Y0} = 4'b0001;
    3'b101: {Y3,Y2,Y1,Y0} = 4'b0010;
    3'b110: {Y3,Y2,Y1,Y0} = 4'b0100; 
    3'b111: {Y3,Y2,Y1,Y0} = 4'b1000;
endcase 
end
endmodule
