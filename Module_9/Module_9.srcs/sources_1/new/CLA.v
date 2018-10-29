`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2018 10:32:59 AM
// Design Name: 
// Module Name: CLA
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


module CLA #(parameter MAX_WIDTH = 3)(
    input [MAX_WIDTH:0] i_A,
    input [MAX_WIDTH:0] i_B,
    input i_Cin,
    output [MAX_WIDTH:0] o_S,
    output o_Cout
    );
    
    wire [MAX_WIDTH:0] w_PROP;
    wire [MAX_WIDTH:0] w_GEN;
    wire [(MAX_WIDTH+1):0] w_CARRY;
    wire [MAX_WIDTH:0] w_SUM;
    wire [MAX_WIDTH:0] w_A;
    wire [MAX_WIDTH:0] w_B;
    wire w_Cin;
    genvar i;
    
    assign o_S = w_SUM;
    assign o_Cout = w_CARRY[(MAX_WIDTH+1)];
    assign w_A = i_A;
    assign w_B = i_B;
    assign w_Cin = i_Cin;
    generate
    begin
        for(i = 0; i <MAX_WIDTH+1; i=i+1)
        begin
            FullAdder_bitslice FA_XX(
            .i_A(w_A[i]),
            .i_B(w_B[i]),
            .i_Carryin(w_CARRY[i]),
            .o_Sum(w_SUM[i]),
            .o_Carryout()
            ); 
        assign w_GEN[i] = w_A[i] & w_B[i];
        assign w_PROP[i] = w_A[i] ^ w_B[i];
        assign w_CARRY[0] = w_Cin;
        assign w_CARRY[i+1] = w_GEN[i] | (w_PROP[i] & w_CARRY[i]);
        end
    end
    endgenerate
    
endmodule
