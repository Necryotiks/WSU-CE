`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 09:20:48 PM
// Design Name: 
// Module Name: decoder
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


module decoder(
    input [1:0] i_SW,
    input [3:0] i_BTN,
    output reg [3:0] o_LED
    );
    always @ (*)
    begin
        case (i_SW)//Takes a number N and outputs 2^N
            2'b00:
                begin
                if(i_BTN[0] == 1)
                    o_LED = 4'b???1;
                else
                    o_LED = 4'b???0;
                end
            2'b01:
                begin
                if(i_BTN[1] == 1)
                    o_LED = 4'b??1?;
                else
                    o_LED = 4'b??0?;
             end     
            2'b10:
                begin
                if(i_BTN[2] == 1)
                    o_LED = 4'b?1??;
                else
                    o_LED = 4'b?0??;
                end
            2'b11:
                begin
                if(i_BTN[3] == 1)
                    o_LED = 4'b1???;
                else
                    o_LED = 4'b0???;
                end
            default:
                o_LED = 4'd0;
        endcase
    end
endmodule
