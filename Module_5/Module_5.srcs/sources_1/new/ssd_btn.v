`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2018 10:09:19 AM
// Design Name: 
// Module Name: ssd_btn
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


module ssd_btn(
input [3:0] sw0,
input[3:0] sw1,
input btn,
output reg [3:0] anode,
output [6:0] cathode
    );

wire [3:0] Yout;
wire cwire;

assign cwire  = btn;

ssd_mux input_mux(
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
