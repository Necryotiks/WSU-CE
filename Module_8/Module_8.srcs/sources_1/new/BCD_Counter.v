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
    wire w_SUBCLK_1KHZ;
    wire w_SUBCLK_10KHZ;
    wire [3:0] w_DATA;
    wire [3:0] w_ANODE;
    wire [6:0] w_CATHODE_0;
    wire [3:0] w_Digit_1_val;
    wire [3:0] w_Digit_2_val;
    wire [3:0] w_Digit_3_val;
    wire [3:0] w_Digit_4_val; 

    assign w_CLK = i_CLK;
    assign w_RST = i_RST;
    assign o_Cathodes = w_CATHODE_0;
    assign o_Anodes = w_ANODE;

    

      
       HZ_Counter #(.c_NUM(50000)) SVD_CLK(
       .i_CLK(w_CLK),
       .i_RST(w_RST),
       .o_Out(w_SUBCLK_1KHZ)
        );
        
        HZ_Counter #(.c_NUM(5000)) SVD_CLK_1(
        .i_CLK(w_CLK),
        .i_RST(),
        .o_Out(w_SUBCLK_10KHZ)
        );
    

        stopwatch_ssd_driver #(.c_HEX_DEC(9)) driver(
        .i_SUBCLK(w_SUBCLK_1KHZ),
        .i_RST(w_RST),
        .o_Digit_1_val(w_Digit_1_val),
        .o_Digit_2_val(w_Digit_2_val),
        .o_Digit_3_val(w_Digit_3_val),
        .o_Digit_4_val(w_Digit_4_val)
        );
        
    ssd_mux switch (
    .i_Digit_1(w_Digit_1_val),
    .i_Digit_2(w_Digit_2_val),
    .i_Digit_3(w_Digit_3_val),
    .i_Digit_4(w_Digit_4_val),
    .i_CLK(w_SUBCLK_10KHZ),
    .an(w_ANODE),
    .o_Out(w_DATA)
    );
  
    ssd_dec digits(
    .i_CLK(w_CLK),
    .i_Num(w_DATA),
    .cathode(w_CATHODE_0)
    );
endmodule
