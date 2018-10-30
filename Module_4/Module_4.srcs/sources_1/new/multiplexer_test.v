`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2018 08:01:57 PM
// Design Name: 
// Module Name: multiplexer_test
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


module multiplexer_test(
input [7:0] i_I0, 
input [7:0] i_I1,
input [7:0] i_I2, //SIM
input [7:0] i_I3,
input [1:0] i_Sel,
output reg [7:0] o_Y
    );
    always@(*)
    begin
        case(i_Sel)
            2'b00: 
            begin
            o_Y = i_I0;
            end
            2'b01:
            begin 
            o_Y = i_I1;
            end
            2'b10: 
            begin
            o_Y = i_I2;
            end
            2'b11: 
            begin
            o_Y = i_I3;
            end
        endcase
    end
       
endmodule
