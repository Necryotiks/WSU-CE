`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 04:56:50 PM
// Design Name: 
// Module Name: challenge_2
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


module challenge_2(
    input [7:0] i_SW,
    output reg [1:0] o_LED
    );
    
    always@(*)
    begin
      if(i_SW[3:0] == 12 | i_SW[3:0] == 10 | i_SW[3:0] == 9 | i_SW[3:0] == 6 | i_SW[3:0] == 5 | i_SW[3:0] == 3) // is dumb, why does verilog allow this.
          o_LED[0] = 1'b1;
        else
          o_LED[0] = 1'b0;
    end
    
    
    always@(*)
    begin
      casez(i_SW)
          8'b0001????: o_LED[1] = 1'b1;  
          8'b0010????: o_LED[1] = 1'b1; 
          8'b0100????: o_LED[1] = 1'b1; 
          8'b1000????: o_LED[1] = 1'b1; 
          default: o_LED[1] = 0;  
      endcase
    end
endmodule
