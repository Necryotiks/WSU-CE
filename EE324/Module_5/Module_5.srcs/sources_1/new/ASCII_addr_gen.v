`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2019 10:55:04 AM
// Design Name: 
// Module Name: ASCII_addr_gen
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


module ASCII_addr_gen(
    input wire i_CLK,
    input wire i_RESETN,
    input wire [7:0] i_ASCII_VAL, //comes from processor.
    input wire [3:0] i_LINE_CNT,
    output reg[10:0] o_BRAM_ADDR
    );
    
    always@(posedge i_CLK)
    begin
    if(!i_RESETN)
        o_BRAM_ADDR <= 11'd0;
    else
        o_BRAM_ADDR <= {i_ASCII_VAL,i_LINE_CNT};   
    end
    
    
endmodule
