`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2018 05:09:36 PM
// Design Name: 
// Module Name: clkdiv
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


module clkdiv(
    input [1:0] sw,
    input clk,
    input rst,
    output led
    
    );

wire [26:0] din; //27 data wires
wire [26:0] clkdivide; //27 clock divider wires


//Create first clock divide segment. This is needed for the generate loop.
/*(*dont_touch ="true"*)*/ dff dff_inst0 (
    .clk(clk),
    .rst(rst),
    .D(din[0]),
    .Q(clkdivide[0])
);
genvar i;

//Build remaining 26 dividers
generate
for (i = 1; i < (27) ; i=i+1)
begin : dff_gen_label1
     dff dff_inst ( /*(*dont_touch ="true"*)*/ 
        .clk(clkdivide[i-1]),
        .rst(rst),
        .D(din[i]),// The output of Q is clkdivide
        .Q(clkdivide[i])
    );
    end
endgenerate
assign din = ~clkdivide; //din is negated clk div
assign led = clkdivide[26-sw] ; //final output.


endmodule
