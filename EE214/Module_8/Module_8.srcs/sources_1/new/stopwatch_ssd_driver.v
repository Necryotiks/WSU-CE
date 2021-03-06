`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2018 05:39:21 PM
// Design Name: 
// Module Name: stopwatch_ssd_driver
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


module stopwatch_ssd_driver(
    input i_SUBCLK, 
    input i_RST,
    output [3:0] o_Digit_1_val,
    output [3:0] o_Digit_2_val,
    output [3:0] o_Digit_3_val,
    output [3:0] o_Digit_4_val
    

    );
       parameter c_HEX_DEC = 9;//Override with either 9 or 15 for decimal or hex mode respectively.
       reg [3:0] r_Digit_1_val;
       reg [3:0] r_Digit_2_val;
       reg [3:0] r_Digit_3_val;
       reg [3:0] r_Digit_4_val;
       wire w_SUBCLK;
       wire w_RST;
       
       assign w_SUBCLK = i_SUBCLK;
       assign w_RST = i_RST;
       assign o_Digit_1_val = r_Digit_1_val;
       assign o_Digit_2_val = r_Digit_2_val;
       assign o_Digit_3_val = r_Digit_3_val;
       assign o_Digit_4_val = r_Digit_4_val;
       
       
       
  
    always@(posedge w_SUBCLK,posedge w_RST) 
    begin
        if(w_RST == 1)
            begin
               r_Digit_1_val <= 4'd0;
               r_Digit_2_val <= 4'd0;
               r_Digit_3_val <= 4'd0;
               r_Digit_4_val <= 4'd0; 
            end
        else
            begin     
                if(r_Digit_4_val >= c_HEX_DEC)
                    begin
                        r_Digit_4_val <= 4'd0;
                        if(r_Digit_3_val >= c_HEX_DEC)
                        begin
                            r_Digit_3_val <= 4'd0;
                            if(r_Digit_2_val >= c_HEX_DEC)
                            begin
                                r_Digit_2_val <= 4'd0;
                                if(r_Digit_1_val >= c_HEX_DEC)
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
