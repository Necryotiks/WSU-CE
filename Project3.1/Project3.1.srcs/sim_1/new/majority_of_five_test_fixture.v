`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2018 09:35:20 PM
// Design Name: 
// Module Name: majority_of_five_test_fixture
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
module majority_of_five_test_fixture;
wire led;
reg [4:0] sw;
majority_of_five uut(
        .sw(sw),
        .led(led)
    );
    
integer i;
initial
begin 
sw = 0;
for(i=0;i<32;i=i+1)
    #20 sw=i;
#20 $finish;
end
    
endmodule