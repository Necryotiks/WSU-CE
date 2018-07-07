`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2018 08:47:03 PM
// Design Name: 
// Module Name: ssd
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
module ssd(
output reg [3:0] anode,
output [6:0] cathode,
input [3:0] btn

    );

 assign cathode = 7'b0000000;
 always @(*)
   begin
     case (btn)
       4'b0001: anode = 4'b1110;//This is a Common Anode display.
       4'b0010: anode = 4'b1101;//LOW Voltage must be applied to both  
       4'b0100: anode = 4'b1011;//cathodes and anodes in order to illminate a
       4'b1000: anode = 4'b0111;//segment.
       default : anode = 4'b1111; 
     endcase
   end
endmodule
