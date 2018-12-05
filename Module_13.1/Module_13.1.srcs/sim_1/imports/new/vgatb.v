`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2018 01:29:09 PM
// Design Name: 
// Module Name: vgatb
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


module vgatb(

    );
    
     reg  r_CLK = 1'b0;
    wire w_HSYNC;
    wire w_VSYNC;
    wire w_VDE;
    wire [9:0] w_X_COORD;
    wire [9:0] w_Y_COORD;
    
    
    VGA_controller uut(
    .i_CLK(r_CLK),
    .o_HSYNC(w_HSYNC),
    .o_VSYNC(w_VSYNC),
    .o_VDE(w_VDE),
    .o_X_COORD(w_X_COORD),
    .o_Y_COORD(w_Y_COORD)
    );
    
    always
        #5 r_CLK = ~r_CLK;
        
    initial begin
    
    end
endmodule
