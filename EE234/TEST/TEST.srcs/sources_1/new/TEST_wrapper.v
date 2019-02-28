`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2018 04:14:09 PM
// Design Name: 
// Module Name: TEST_wrapper
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


module TEST_wrapper(
    input i_CLK,
    input i_rst,
    output o_Y
    );
    
    wire A,B,C,D;
    
    dff dff1(
    .D(D),
    .clk(i_CLK),
    .Q(B),
    .rst(i_rst)
    );
      dff dff2(
      .D(B),
      .clk(i_CLK),
      .Q(C),
      .rst(i_rst)
      );
        dff dff3(
        .D(C),
        .clk(i_CLK),
        .Q(A),
        .rst(i_rst)
        );
    assign D = ~(A & C);
    assign o_Y =D;
endmodule
