`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2018 08:11:55 PM
// Design Name: 
// Module Name: clksft_alt
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

//DEBUG IN LAB
module clksft_alt(
    input clkin,
    input rst,
    output [15:0] leds
    );
    
    wire [7:0] d;
genvar i;
generate
for(i = 0; i <7; i=i+1)
begin
   dff dff_shift(
   .clk(clkin),
   .rst(rst),
   .D(d[i]),
   .Q(d[i+i])
   
   );
end
endgenerate
 dff dff_shift_fin(
   .clk(clkin),
   .rst(rst),
   .D(d[7]),
   .Q(d[0])
   
   );
 
 assign leds[3:0] = d[3:0];
 assign leds[6:4] = d[4];
 assign leds[9:7] = d[5];
 assign leds[12:0] = d[6];
 assign leds[15:13] = d[7];
endmodule

