`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2018 11:37:27 PM
// Design Name: 
// Module Name: ssdwrapper
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


module ssdwrapper(
input [3:0] sw0,
input[3:0] sw1,
input clk,
output reg [3:0] anode,
output [6:0] cathode
    );
//reg [3:0] sw0;
//reg [3:0] sw1;
wire [3:0] Yout;
wire cwire;
clock timer(
.clk(clk),
.Y(cwire)
);

mux input_mux(
.sw0(sw0),
.sw1(sw1),
.S(cwire),
.Y(Yout)
);
bin2seg ssd(
.Y(Yout),
.cathode(cathode)
);
always@(*)
begin
if(cwire == 0)
    anode = 4'b1011;
else 
    anode = 4'b0111;
end
endmodule
