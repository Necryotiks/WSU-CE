`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 04:04:52 PM
// Design Name: 
// Module Name: SW_backwards
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


module ssd(
    output reg [3:0] o_ANODE,
    output [6:0] o_CATHODE,
    input [3:0] i_BTN
    );

    assign o_CATHODE = 7'b0000000;
 always @(*)
   begin
     case (btn)
       4'b0001: o_ANODE = 4'b1110;//This is a Common Anode display.
       4'b0010: o_ANODE = 4'b1101;//LOW Voltage must be applied to both  
       4'b0100: o_ANODE = 4'b1011;//o_CATHODEs and i_ANODEs in order to illminate a
       4'b1000: o_ANODE = 4'b0111;//segment.
       default : o_ANODE = 4'b1111; 
     endcase
   end
endmodule