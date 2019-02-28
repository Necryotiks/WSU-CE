`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2018 12:12:30 PM
// Design Name: 
// Module Name: clock_divider_tb
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


module clock_divider_tb;

reg r_CLK;
reg r_RST;
wire w_LED;

clock_divider uut(
.i_CLK(r_CLK),
.i_RST(r_RST),
.o_LED(w_LED)
);

    always
        #20 r_CLK = ~r_CLK; //5 ns high, then 5 ns low

    initial begin
        // Initialize Inputs
        r_CLK = 1'b0;
        r_RST = 1'b1;

        #10 r_RST = 1'b0;

        // Wait 100 ns for global reset to finish
        #100;

    end
endmodule
