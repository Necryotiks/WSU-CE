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
    input wire i_RST,
    input wire [15:0] i_X_COORD, //upper left corner of char matrix
    input wire [15:0] i_Y_COORD,
    input wire [15:0] i_START_X_COORD,
    input wire [15:0] i_START_Y_COORD,
    input wire [7:0] i_ASCII_VAL, //comes from processor.
    output reg[10:0] o_BRAM_ADDR
    );
    
    //NOTE: upper 7 bits determine the add of the char and lower 4 bits are the address of the line
    //maybe local 4-bit counter?
    //FSM that can handle sequences?
    
    //TODO:Finish
    reg [3:0] r_CHAR_LINE_CNT = 0;
    reg [3:0] r_PIX_CNT = 0;
    
    //Every 16 clk cycles, request a new character.
    always@(posedge i_CLK)
    begin
        if(r_PIX_CNT == 15)
        begin
        end
        else
            r_PIX_CNT <= r_PIX_CNT + 1;
    end

    
    
    always@(posedge i_CLK)
    begin
        if(i_X_COORD >= i_START_X_COORD)
        begin
            o_BRAM_ADDR <= {i_ASCII_VAL,r_CHAR_LINE_CNT};
        end
        else
        begin
            o_BRAM_ADDR <= 11'd0;
        end
        
    end
    
    
endmodule
