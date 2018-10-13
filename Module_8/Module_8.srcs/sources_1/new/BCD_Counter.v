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
    wire w_SUBCLK_10HZ;
    wire w_SUBCLK_100HZ;
    wire w_SUBCLK_1KHZ;
    wire w_SUBCLK_10KHZ;
    wire [3:0] w_DATA;
    wire [3:0] w_ANODE;
    wire [6:0] w_CATHODE_0;
    reg [3:0] r_Digit_1_val;
    reg [3:0] r_Digit_2_val;
    reg [3:0] r_Digit_3_val;
    reg [3:0] r_Digit_4_val; 
    assign w_CLK = i_CLK;
    assign w_RST = i_RST;
    assign o_Cathodes = w_CATHODE_0;
    assign o_Anodes = w_ANODE;
    //assign o_Anodes = 4'b0111;
    
    HZ_Counter #(.c_NUM(50000000)) Digit_1(
    .i_CLK(w_CLK),
    .i_RST(w_RST),
    .o_Out(w_SUBCLK_1HZ)
    );
    HZ_Counter #(.c_NUM(5000000)) Digit_2(
    .i_CLK(w_CLK),
    .i_RST(w_RST),
    .o_Out(w_SUBCLK_10HZ)
     );
     HZ_Counter #(.c_NUM(500000)) Digit_3(
     .i_CLK(w_CLK),
     .i_RST(w_RST),
     .o_Out(w_SUBCLK_100HZ)
      );
     HZ_Counter #(.c_NUM(50000)) Digit_4(
     .i_CLK(w_CLK),
     .i_RST(w_RST),
     .o_Out(w_SUBCLK_1KHZ)
      );
      
        HZ_Counter #(.c_NUM(5000)) SVD_CLK(
         .i_CLK(w_CLK),
         .i_RST(w_RST),
         .o_Out(w_SUBCLK_10KHZ)
          );
    
    always@(posedge w_SUBCLK_1HZ)
    begin
        if(r_Digit_1_val == 4'hA)
            r_Digit_1_val <=4'd0;
        else
            r_Digit_1_val <= r_Digit_1_val + 1'b1;
    end
    
    always@(posedge w_SUBCLK_10HZ)
    begin
        if(r_Digit_2_val == 4'hA)
            r_Digit_2_val <=4'd0;
        else
            r_Digit_2_val <= r_Digit_2_val + 1'b1;
    end
    
    always@(posedge w_SUBCLK_100HZ)
    begin
    if(r_Digit_3_val == 4'hA)
        r_Digit_3_val <=4'd0;
    else
        r_Digit_3_val <= r_Digit_3_val + 1'b1;
    end
    
    always@(posedge w_SUBCLK_1KHZ)
    begin
        if(r_Digit_4_val == 4'hA)
            r_Digit_4_val <=4'd0;
        else
            r_Digit_4_val <= r_Digit_4_val + 1'b1;
    end

    
    
    
    ssd_mux switch (
    .i_Digit_1(r_Digit_1_val),
    .i_Digit_2(r_Digit_2_val),
    .i_Digit_3(r_Digit_3_val),
    .i_Digit_4(r_Digit_4_val),
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
