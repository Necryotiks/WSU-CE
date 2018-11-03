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
    output  [6:0] o_Cathodes
    );
    
wire [3:0] w_Num;
wire w_CLK;
reg [6:0] r_Cathodes;
assign w_CLK = i_CLK;
assign w_Num = i_Num;
assign o_Cathodes = r_Cathodes;
  
always@(posedge(w_CLK))
begin
    case(w_Num)
         4'b0000://0
         begin 
             r_Cathodes = 7'b1000000;
         end
         4'b0001://1
         begin 
             r_Cathodes = 7'b1111001;
         end
         4'b0010://2
         begin 
             r_Cathodes = 7'b0100100;
         end
         4'b0011://3
         begin  
             r_Cathodes = 7'b0110000;
         end
         4'b0100://4
         begin 
             
             r_Cathodes = 7'b0011001;
         end
         4'b0101://5
         begin   
             r_Cathodes = 7'b0010010;
         end
         4'b0110://6
         begin                         
             r_Cathodes = 7'b0000010;
         end
         4'b0111://7
         begin 
             r_Cathodes = 7'b1111000;
         end
         4'b1000://8
         begin 
             r_Cathodes = 7'b0000000;
         end
         4'b1001://9
         begin 
             r_Cathodes = 7'b0010000;
         end
         4'b1010://A
         begin   
             r_Cathodes = 7'b0001000;
         end
         4'b1011://B
         begin  
             r_Cathodes = 7'b0000011;
         end
         4'b1100://C
         begin 
             r_Cathodes = 7'b1000110;
         end
         4'b1101://D
         begin    
             r_Cathodes = 7'b0100001;
         end
         4'b1110://E
         begin       
             r_Cathodes = 7'b0000110;
         end
         4'b1111://F
         begin                     
             r_Cathodes = 7'b0001110;
         end 
    endcase  
end     
endmodule
