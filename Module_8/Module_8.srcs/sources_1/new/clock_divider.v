`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2018 11:31:27 AM
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(
    input i_CLK,
    input i_RST,
    output o_LED
    );
    
    genvar i;
    wire [26:0] w_DIN;
    wire [26:0] w_CLKDIV;
    
    dff dff_in(
    .i_CLK(i_CLK),
    .i_RST(i_RST),
    .i_D(w_DIN[0]),
    .o_Q(w_CLKDIV[0])
    );
    
    generate
        for(i = 1; i< 27; i = i + 1)
        begin:dff_ist
        dff dff_x(
        .i_CLK(w_CLKDIV[i - 1]),
        .i_RST(i_RST),
        .i_D(w_DIN[i]),
        .o_Q(w_CLKDIV[i])
        );
        end
    endgenerate
    assign w_DIN = ~w_CLKDIV;
    assign o_LED = w_CLKDIV[26];
endmodule
