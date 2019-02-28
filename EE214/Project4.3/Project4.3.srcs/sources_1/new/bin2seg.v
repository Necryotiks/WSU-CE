`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2018 07:01:13 PM
// Design Name: 
// Module Name: bin2seg
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


module bin2seg(
input [3:0] Y,
output reg [6:0] cathode

    );
    
always@(Y)
begin
    case(Y)
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
        4'b1010://A
        begin 
           
            cathode = 7'b0001000;
        end
        4'b1011://B
        begin 
            
            cathode = 7'b0000011;
        end
        4'b1100://C
        begin 
            
            cathode = 7'b1000110;
        end
        4'b1101://D
        begin 
           
            cathode = 7'b0100001;
        end
        4'b1110://E
        begin 
            
            cathode = 7'b0000110;
        end
        4'b1111://F
        begin 
           
            cathode = 7'b0001110;
        end
    endcase
end
endmodule
