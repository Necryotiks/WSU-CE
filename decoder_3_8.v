`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2018 09:56:53 PM
// Design Name: 
// Module Name: decoder_3_8
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


module decoder_3_8 (
    input [2:0] In, //N inputs
    output reg [7:0] Out //2^N Outputs
);
always @ (In)
begin
    case (In)//Takes a number N and outputs 2^N
        3'b000:
            Out = 8'd1;
        3'b001:
            Out = 8'd2;
        3'b010:
            Out = 8'd4;
        3'b011:
            Out = 8'd8;
        3'b011:
            Out = 8'd16;
        3'b101:
            Out = 8'd32;
        3'b110:
            Out = 8'd64;
        3'b111:
            Out = 8'd128;
        default:
            Out = 8'd0;
    endcase
end
endmodule
