`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 08:45:12 PM
// Design Name: 
// Module Name: color_logic
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


module color_logic(
input i_CLK,
input [9:0] i_X_COORD,
input [9:0] i_Y_COORD,
output [7:0] o_RED,
output [7:0] o_GREEN,
output [7:0] o_BLUE

    );
    parameter v_HA_START = 160;
    parameter v_VA_START = 0;
    parameter v_HA_END = 800;
    parameter v_VA_END = 524;
    
    wire w_CLK;
    wire [9:0] w_X_COORD;
    wire [9:0] w_Y_COORD;
    reg [7:0] r_RED = 8'b00000000;
    reg [7:0] r_GREEN = 8'b00000000;
    reg [7:0] r_BLUE = 8'b00000000;
    
    assign w_CLK = i_CLK;
    assign w_X_COORD = i_X_COORD;
    assign w_Y_COORD = i_Y_COORD;
    assign o_RED = r_RED;
    assign o_GREEN = r_GREEN;
    assign o_BLUE = r_BLUE;
    
    always@(posedge w_CLK)
    begin
        if(w_X_COORD >= v_HA_START && w_X_COORD <= v_HA_END)begin
            if (w_Y_COORD >= v_VA_START &&  w_Y_COORD <= v_VA_END)
                begin
                    r_RED = 8'b00001111;
                    r_BLUE = 8'b00001001;
                    r_GREEN = 8'b00000000;
                end
            end
        else
            begin
                r_RED = 8'b00000000;
                r_BLUE = 8'b00000000;
                r_GREEN = 8'b00000000;
            end
    end


endmodule
