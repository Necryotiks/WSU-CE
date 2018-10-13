`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2018 03:32:01 PM
// Design Name: 
// Module Name: ssd_dec
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


module ssd_dec(


input i_CLK,
input [3:0] i_Num,
output reg [6:0] cathode

    );
    
  wire [3:0] w_Num;
  assign w_Num = i_Num;  
always@(posedge(i_CLK))
begin
    case(w_Num)
        4'b0000://0
        begin 
            
            cathode = 7'b1000000;
        end
        4'b0001://1
        begin 
            
            cathode = 7'b1111001;
        end
        4'b0010://2
        begin 
            
            cathode = 7'b0100100;
        end
        4'b0011://3
        begin 
            
            cathode = 7'b0110000;
        end
        4'b0100://4
        begin 
            
            cathode = 7'b0011001;
        end
        4'b0101://5
        begin 
            
            cathode = 7'b0010010;
        end
        4'b0110://6
        begin 
            
            cathode = 7'b0000010;
        end
        4'b0111://7
        begin 
           ;
            cathode = 7'b1111000;
        end
        4'b1000://8
        begin 
            
            cathode = 7'b0000000;
        end
        4'b1001://9
        begin 
            cathode = 7'b0010000;
        end
        default: cathode = 7'd0;
    endcase  
    end
endmodule
