`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2018 12:13:42 PM
// Design Name: 
// Module Name: temp_fixture
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
module temp_fixture;
reg [7:0] sw;
wire led;

temp uut(
.sw(sw),
.led(led)
);

integer i;
initial
begin 
sw=0;
for(i=0;i<256;i=i+1)
     #05 sw = i;
#20 $finish;
end
endmodule
