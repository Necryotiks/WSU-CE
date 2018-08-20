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
        I0, I1, I2, I3, Y0, Y1, Y2, Y3,clk,TDATA
    );
    
    input I3, I2, I1, I0,clk;
    output Y0, Y1, Y2, Y3,TDATA;
    
    // Structural Description of wrapper
    wire sdata,S0,S1,t0,t1,t2,t3;
    
    counter ck(
    .clk(clk),
    .Y0(S0),
    .Y1(S1)
    );
    
    mux input_mux (
        .I3(I3),
        .I2(I2),
        .I1(I1),
        .I0(I0),
        .S1(S1),
        .S0(S0),
        .Y(sdata)
    );
    
    demux output_demux (
        .En(sdata),
        .I1(S1),
        .I0(S0),
        .Y0(t0),
        .Y1(t1),
        .Y2(t2),
        .Y3(t3)
    );
    
    latch output_latch(
    .S({S1,S0}),
    .I({t3,t2,t1,t0}),
    .O({Y3,Y2,Y1,Y0})
    );
    assign TDATA = sdata;
endmodule
