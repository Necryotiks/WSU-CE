`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2018 03:53:42 PM
// Design Name: 
// Module Name: BCD_Counter
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


module BCD_Counter(
 input i_CLK,
 input i_RST,
 output [6:0] o_Cathodes,
 output [3:0] o_Anodes
    );
   
    wire w_CLK;
    wire w_RST;
    wire w_SUBCLK_1HZ;
    wire [6:0] w_CATHODE_0;
    assign w_CLK = i_CLK;
    assign w_RST = i_RST;
    assign o_Anodes =4'b1110;
    assign o_Cathodes = w_CATHODE_0;
    
    HZ_Counter #(.c_NUM(50000000)) Digit_1(
    .i_CLK(w_CLK),
    .i_RST(w_RST),
    .o_Out(w_SUBCLK_1HZ)
    );
    
    //MUX HERE
    //SETS ANODE AND SELECETS CATHODE DRIVER
  
    ssd_dec digit(
    .i_CLK(w_SUBCLK_1HZ),
    .cathode(w_CATHODE_0)
    );
endmodule
