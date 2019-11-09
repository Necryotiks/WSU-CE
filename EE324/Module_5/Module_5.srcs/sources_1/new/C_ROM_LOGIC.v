`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2019 01:36:58 PM
// Design Name: 
// Module Name: C_ROM_LOGIC
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


module C_ROM_LOGIC(
    input wire i_CLK,
    input wire i_VDE,
    input wire [15:0] i_CHAR_LINE,
    input wire [15:0] i_X_COORD,
    input wire [15:0] i_Y_COORD,
    input wire [7:0] i_BG_RED,
    input wire [7:0] i_BG_GREEN,
    input wire [7:0] i_BG_BLUE,
    input wire [7:0] i_FG_RED,
    input wire [7:0] i_FG_GREEN,
    input wire [7:0] i_FG_BLUE,
    output reg [7:0] o_RED,
    output reg [7:0] o_GREEN,
    output reg [7:0] o_BLUE
    );
    
    //read the char line if 1 print forground else print back ground.
    
    reg [3:0] r_PIX_CNT = 0;
    
    always@(posedge i_CLK)
    begin
        r_PIX_CNT <= r_PIX_CNT + 1;
    end
    always@(posedge i_CLK)
    begin
        if(i_VDE)
        begin
            if(i_CHAR_LINE[r_PIX_CNT] == 1'b1)
            begin
                o_RED = i_FG_RED;
                o_GREEN = i_FG_GREEN;
                o_BLUE = i_FG_BLUE; 
            end
            else //TODO:back ground color
            begin
                o_RED = i_BG_RED;
                o_GREEN = i_BG_GREEN;
                o_BLUE = i_BG_BLUE;
            end
        end
        else
        begin
            o_RED = 8'd0;
            o_GREEN = 8'd0;
            o_BLUE = 8'd0;
        end
    end
    
endmodule
