`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2018 12:38:52 PM
// Design Name: 
// Module Name: PISO
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


module PISO #(parameter BUS_WIDTH = 8)(
input [BUS_WIDTH-1:0] i_IN,
input i_SFT_LD,
input i_CLK,
output o_OUT
    );
    reg [BUS_WIDTH-1:0] r_IN ;

assign o_OUT = r_IN;
always@(posedge(i_CLK))
begin
    if(i_SFT_LD == 0)
        r_IN = i_IN; //Load by default
    else
        r_IN = r_IN << 1'b1;        
end
endmodule
