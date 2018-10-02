`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2018 07:51:36 PM
// Design Name: 
// Module Name: mux_demux
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


module mux_demux(
    input [7:0] i_IN,
    input i_CLK,
    output [7:0] o_LED,
    output o_TDATA
    );
    
    
    
    // Structural Description of wrapper
    wire w_SDATA;
    wire [2:0] w_SEL;
    wire [7:0]w_TRANSFER;
    
    counter ck(
    .clk(i_CLK),
    .Y0(w_SEL[0]),
    .Y1(w_SEL[1]),
    .Y2(w_SEL[2])
    );
    
    mux input_mux (
      .i_Input(i_IN),
      .i_Sel(w_SEL),
      .o_Y(w_SDATA)
    );
    
    demux output_demux (
        .i_En(w_SDATA),
        .i_decInput(w_SEL),
        .o_LED(w_TRANSFER)
    );
    
    latch output_latch(
    .S(w_SEL),
    .I(w_TRANSFER),
    .O(o_LED)
    );
    assign o_TDATA = w_SDATA;
endmodule
