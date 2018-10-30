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


module PISO(
input [7:0] i_SW,
input i_buf,
input i_SFT_LD,
input i_CLK,
output  [7:0] o_LED,
output reg o_buf
    );
    reg [7:0] r_SW ;

assign o_LED = r_SW;

always@(posedge(i_CLK))
begin
    if(i_SFT_LD == 0)
        r_SW = i_SW; //Load by default
    else
    begin
        
        r_SW = r_SW << 1; //SHIFT otherwise.
        r_SW[0] = i_buf;
        o_buf = r_SW[7];
    end
    
end
endmodule
