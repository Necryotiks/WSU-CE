`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 06:01:42 PM
// Design Name: 
// Module Name: challenge_3
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


module challenge_3(
    input [7:0] i_SW,
    input [3:0] i_BTN,
    output reg [1:0] o_LED
    );
   wire [7:0]  w_SW;
   wire [3:0] w_BTN;
   integer i;
   integer k;
   integer flag;
   integer b_flag;
   //assign w_SW = i_SW;
   //assign w_BTN = i_BTN;
    always@(*)
    begin
        flag = 0;
        b_flag = 0;
        for(i = 0; i < 8; i = i+1)
            if (i_SW[i] == 1) //count active wires in bus.
                flag = flag + 1;
        for(k =0;k<4;k= k+1)
               if (i_BTN[k] == 1)
                     b_flag = b_flag + 1;
        if ((flag  == 1 | flag == 3 | flag == 5 | flag == 7) & (b_flag  == 1 | b_flag == 3))    
            o_LED = 2'b01;
        else if ((flag  == 1 | flag == 3 | flag == 5 | flag == 7) & (b_flag  == 0 | b_flag == 2 | b_flag == 4))
            o_LED = 2'b11;
        else
            o_LED = 2'b00;              
    end
        
endmodule
