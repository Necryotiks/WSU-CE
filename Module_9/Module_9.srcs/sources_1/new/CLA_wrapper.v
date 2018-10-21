`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2018 10:51:49 PM
// Design Name: 
// Module Name: CLA_wrapper
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


module CLA_wrapper(
    input [3:0] i_SW_LOWER,
    input [3:0] i_SW_UPPER,
    input i_CLK,
    input i_RST,
    output [6:0] o_Cathodes,
    output [3:0] o_Anodes,
    output o_Overflow
    );
    
    wire [3:0] w_SUM;
    wire w_CARRY;
    wire w_CLK;
    wire w_RST;
    wire w_SUBCLK;
    wire [3:0] w_DIGIT;
    wire [3:0] w_SW_LOWER;
    wire [3:0] w_SW_UPPER;
    wire [3:0] w_ANODE;
    wire [6:0] w_CATHODE;
    reg [3:0] r_SSD_0;
    reg [3:0] r_SSD_1;

    assign w_CLK = i_CLK;
    assign w_RST = i_RST;
    assign w_SW_LOWER = i_SW_LOWER;
    assign w_SW_UPPER = i_SW_UPPER;
    assign o_Cathodes = w_CATHODE;
    assign o_Anodes = w_ANODE;
    assign o_Overflow = w_CARRY;
    
    CLA #(.MAX_WIDTH(3)) CLA1(
    .i_A(w_SW_UPPER),
    .i_B(w_SW_LOWER),
    .o_S(w_SUM),
    .o_Cout(w_CARRY)
    );
    
    HZ_Counter #(.c_NUM(50000)) SVD(
    .i_CLK(w_CLK),
    .i_RST(w_RST),
    .o_Out(w_SUBCLK)
    );
    
    always@(posedge w_CLK)
    begin
      if(w_SUM >= 4'd10)
            begin
                r_SSD_0 <= w_SUM - 4'd10;
                r_SSD_1 <= 4'd1;
            end
        else        
            begin
                r_SSD_0 <= w_SUM;
                r_SSD_1 <= 4'd0;
            end    
    end

    ssd_mux sw1(
    .i_Digit_1(),
    .i_Digit_2(),
    .i_Digit_3(r_SSD_1),
    .i_Digit_4(r_SSD_0),
    .i_CLK(w_SUBCLK),
    .o_Out(w_DIGIT),
    .an(w_ANODE)
    );
    
    ssd_dec digit(
    .i_CLK(w_CLK),
    .i_Num(w_DIGIT),
    .cathode(w_CATHODE)
    );
    
endmodule
