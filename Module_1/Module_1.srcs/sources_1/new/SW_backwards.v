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


module SW_backwards(
    input [7:0] i_SW,
    output [15:0] o_LED
    );
    
    ////Backwards
    //assign led[0] = sw[7];
    //assign led[1] = sw[6];
    //assign led[2] = sw[5];
    //assign led[3] = sw[4];
    //assign led[6] = sw[3];
    //assign led[5] = sw[3];
    //assign led[4] = sw[3];
    //assign led[9] = sw[2];
    //assign led[8] = sw[2];
    //assign led[7] = sw[2];
    //assign led[12] = sw[1];
    //assign led[11] = sw[1];
    //assign led[10] = sw[1];
    //assign led[15] = sw[0];
    //assign led[14] = sw[0];
    //assign led[13] = sw[0];
    
  assign o_LED[0] = i_SW[7];
  assign o_LED[1] = i_SW[6];
  assign o_LED[2] = i_SW[5];
  assign o_LED[3] = i_SW[4];
  assign o_LED[6] = i_SW[3];
  assign o_LED[5] = i_SW[3];
  assign o_LED[4] = i_SW[3];
  assign o_LED[9] = i_SW[2];
  assign o_LED[8] = i_SW[2];
  assign o_LED[7] = i_SW[2];
  assign o_LED[12] = i_SW[1];
  assign o_LED[11] = i_SW[1];
  assign o_LED[10] = i_SW[1];
  assign o_LED[15] = i_SW[0];
  assign o_LED[14] = i_SW[0];
  assign o_LED[13] = i_SW[0];
endmodule
