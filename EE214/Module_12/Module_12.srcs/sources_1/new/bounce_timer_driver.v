`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2018 02:19:21 PM
// Design Name: 
// Module Name: bounce_timer_driver
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


module bounce_timer_driver(

    input [11:0] i_SUBCLK, 
    input i_RST,
  
    output [3:0] o_Digit_1_val,
    output [3:0] o_Digit_2_val,
    output [3:0] o_Digit_3_val,
    output [3:0] o_Digit_4_val
    );
       parameter c_HEX_DEC = 9;//Override with either 9 or 15 for decimal or hex mode respectively.
       reg [3:0] r_HEX_DEC;
       reg [3:0] r_Digit_1_val = 4'b0000;
       reg [3:0] r_Digit_2_val = 4'b0000;
       reg [3:0] r_Digit_3_val = 4'b0000;
       reg [3:0] r_Digit_4_val = 4'b0000;
       wire [11:0] w_SUBCLK;
       wire w_RST;
       wire w_CLK_EN;
       wire w_SRST;
       assign w_SUBCLK = i_SUBCLK;
       assign w_RST = i_RST;
       assign o_Digit_1_val = r_Digit_1_val;
       assign o_Digit_2_val = r_Digit_2_val;
       assign o_Digit_3_val = r_Digit_3_val;
       assign o_Digit_4_val = r_Digit_4_val;
       

    always@(posedge w_SUBCLK[0],posedge w_SUBCLK[1],posedge w_SUBCLK[2],
    posedge w_SUBCLK[3],posedge w_SUBCLK[4],posedge w_SUBCLK[5],posedge w_SUBCLK[6],posedge w_SUBCLK[7],
    posedge w_SUBCLK[8],posedge w_SUBCLK[9],posedge w_SUBCLK[10],posedge w_SUBCLK[11],posedge w_RST) 
    begin
        r_HEX_DEC <= c_HEX_DEC; //verilog bullshit.
         
        if(w_RST == 1'b1 )
            begin
               r_Digit_1_val <= 4'd0;
               r_Digit_2_val <= 4'd0;
               r_Digit_3_val <= 4'd0;
               r_Digit_4_val <= 4'd0; 
            end               
        else
            begin
                if(r_Digit_4_val >= r_HEX_DEC)
                    begin
                        r_Digit_4_val <= 4'd0;
                        if(r_Digit_3_val >= r_HEX_DEC)
                            begin
                                r_Digit_3_val <= 4'd0;
                                if(r_Digit_2_val >= r_HEX_DEC)
                                    begin
                                        r_Digit_2_val <= 4'd0;
                                        if(r_Digit_1_val >= r_HEX_DEC)
                                            r_Digit_1_val <= 4'd0;
                                        else
                                            r_Digit_1_val <= r_Digit_1_val + 4'd1;
                                    end
                                else
                                    r_Digit_2_val <= r_Digit_2_val + 4'd1;
                            end
                        else
                            r_Digit_3_val <= r_Digit_3_val + 4'd1;  
                    end
                else
                    r_Digit_4_val <= r_Digit_4_val + 4'd1;             
            end     
    end
    
endmodule
