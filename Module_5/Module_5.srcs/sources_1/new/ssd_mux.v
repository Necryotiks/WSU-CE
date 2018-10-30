`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2018 08:25:12 PM
// Design Name: 
// Module Name: mux
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


module ssd_mux(
input [3:0] sw0,
input [3:0] sw1,
input S,
output reg [3:0] Y
    );
 always@(sw0,sw1,S)
 begin
 if(S == 0)
    case(sw0)
        4'd0: Y = 4'd0;
        4'd1: Y = 4'd1;
        4'd2: Y = 4'd2;
        4'd3: Y = 4'd3;
        4'd4: Y = 4'd4;
        4'd5: Y = 4'd5;
        4'd6: Y = 4'd6;
        4'd7: Y = 4'd7;
        4'd8: Y = 4'd8;
        4'd9: Y = 4'd9;
        4'd10: Y = 4'd10;
        4'd11: Y = 4'd11;
        4'd12: Y = 4'd12;
        4'd13: Y = 4'd13;
        4'd14: Y = 4'd14;
        4'd15: Y = 4'd15;
    endcase
 else 
     case(sw1)
         4'd0: Y = 4'd0;
         4'd1: Y = 4'd1;
         4'd2: Y = 4'd2;
         4'd3: Y = 4'd3;
         4'd4: Y = 4'd4;
         4'd5: Y = 4'd5;
         4'd6: Y = 4'd6;
         4'd7: Y = 4'd7;
         4'd8: Y = 4'd8;
         4'd9: Y = 4'd9;
         4'd10: Y = 4'd10;
         4'd11: Y = 4'd11;
         4'd12: Y = 4'd12;
         4'd13: Y = 4'd13;
         4'd14: Y = 4'd14;
         4'd15: Y = 4'd15;
     endcase
 end
endmodule
