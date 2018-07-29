`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/15/2018 05:06:38 PM
// Design Name: 
// Module Name: mux_test
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
module mux_test;
//reg [1:0] I0; //two bits to light up 2 leds.
//reg [1:0] I1;
//reg [1:0] I2;
//reg [1:0] I3;
reg [7:0] I;
reg [1:0] Sel;
wire [1:0] led;

mux_4_1 uut(
.I(I),
.Sel(Sel),
.led(led)
);
integer i;
initial
begin
    for(i =0; i<255;i=i+1)
        begin
        #10 I = i;
        #10 Sel = (i %4);
        end  
    #20 $finish;
end    
endmodule
