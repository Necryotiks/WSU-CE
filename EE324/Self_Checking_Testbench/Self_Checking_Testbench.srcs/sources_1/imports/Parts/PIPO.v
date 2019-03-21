`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2018 11:36:07 AM
// Design Name: 
// Module Name: PIPO
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


module PIPO #(parameter WIDTH = 8)(
input wire i_CLK,
input wire i_RST,
input wire i_LOAD,
input wire [WIDTH-1:0] i_DIN,
output reg [WIDTH-1:0] o_DOUT = {WIDTH{1'b0}}
    );
//genvar i;

//generate
//for(i=0; i< 8; i= i+1)
//begin
// dff dff_x(
//.clk(i_BTN),
//.rst(i_RST),
//.D(i_SW[i]),
//.Q(o_LED[i])
//);
//end
//endgenerate


always@(posedge(i_CLK))
begin
    if(i_RST == 1)
        o_DOUT <= {WIDTH{1'b0}};
    else if(i_LOAD == 1)
        o_DOUT <= i_DIN;
    else
        o_DOUT <= o_DOUT;
end
endmodule
