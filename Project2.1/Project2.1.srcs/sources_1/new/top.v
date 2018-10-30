`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2018 01:32:04 PM
// Design Name: 
// Module Name: top
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


module top(
<<<<<<< HEAD
output reg [3:0]  led,
=======
output [3:0] led,
>>>>>>> master
input [7:0] sw
    );
//    //SOP 
//    assign led[0] = (sw[1] & ~sw[0]) | 
//    (~sw[1] & sw[0]);
    
//    assign led[1] = (~sw[3] & ~sw[2] & ~sw[1]) | 
//    (~sw[3] & sw[2] & sw[1]) |
//    (sw[3] & ~sw[2] & sw[1]);
    
//    assign led[2] = (~sw[7] & ~sw[6] & ~sw[5] & sw[4]) |
//    (~sw[7] & ~sw[6] & sw[5] & sw[4]) | 
//    (~sw[7] & sw[6] & ~sw[5] & ~sw[4]) | 
//    (sw[7] & sw[6] & sw[5] & sw[4]);
    
//    assign led[3] = (~sw[6] & ~sw[5] & ~sw[4] & sw[3]) |
//    (~sw[6] & sw[5] & ~sw[4] & ~sw[3]) | 
//    (sw[6] & sw[5] & ~sw[4] & ~sw[3]) | 
//    (sw[6] & sw[5] & sw[4] & ~sw[3]) |
//    (sw[6] & ~sw[5] & ~sw[4] & sw[3]) | 
//    (~sw[6] & sw[5] & sw[4] & ~sw[3]) | 
//    (sw[6] & ~sw[5] & sw[4] & sw[3]) |
//    (~sw[6] & ~sw[5] & sw[4] & sw[3]);

<<<<<<< HEAD
//    //POS
//    assign led[0] = (sw[1] | sw[0]) & (~sw[1] | ~sw[0]);
    
//    assign led[1] = (sw[3] | sw[2] | ~sw[1]) & 
//    (sw[3] | ~sw[2] | sw[1]) &
//    (~sw[3] | sw[2] | sw[1]) & 
//    (~sw[3] | ~sw[2] | sw[1] ) &
//    (~sw[3] | ~sw[2] | ~sw[1]);
    
//    assign led[2] = (sw[7] | sw[6] | sw[5] | sw[4]) & 
//    (sw[7] | sw[6] | ~sw[5] | sw[4]) &
//    (sw[7] | ~sw[6] | sw[5] | ~sw[4]) & 
//    (sw[7] | ~sw[6] | ~sw[5] | sw[4]) &
//    (sw[7] | ~sw[6] | ~sw[5] | ~sw[4]) & 
//    (~sw[7] | sw[6] | sw[5] | sw[4]) &
//    (~sw[7] | sw[6] | sw[5] | ~sw[4]) & 
//    (~sw[7] | sw[6] | ~sw[5] | sw[4]) &
//    (~sw[7] | sw[6] | ~sw[5] | ~sw[4]) & 
//    (~sw[7] | ~sw[6] | sw[5] | sw[4]) &
//    (~sw[7] | ~sw[6] | sw[5] | ~sw[4]) & 
//    (~sw[7] | ~sw[6] | ~sw[5] | sw[4]);
    
//    assign led[3] = (sw[6] | sw[5] | sw[4] | sw[3]) & 
//    (sw[6] | sw[5] | ~sw[4] | sw[3]) &
//    (~sw[6] | sw[5] | sw[4] | sw[3]) &
//    (~sw[6] | ~sw[5] | ~sw[4] | ~sw[3]) &
//    (~sw[6] | sw[5] | ~sw[4] | sw[3]) &
//    (sw[6] | ~sw[5] | ~sw[4] | ~sw[3]) &
//    (sw[6] | ~sw[5] | sw[4] | ~sw[3]) &
//    (~sw[6] | ~sw[5] | sw[4] | ~sw[3]);
    
  always@(*)
  begin
    if(sw[3:0] == 12 | sw[3:0] == 10 | sw[3:0] == 9 | sw[3:0] == 6 | sw[3:0] == 5 | sw[3:0] == 3) // is dumb, why does verilog allow this.
        led[0] = 1;
     else
        led[0] = 0;
  end 
  
  
  always@(*)
  begin
    casez(sw)
        8'b0111????: led[1] = 1;  
        8'b1011????: led[1] = 1; 
        8'b1101????: led[1] = 1; 
        8'b1110????: led[1] = 1; 
        default: led[1] = 0;  
    endcase
    led[3:2] = 2'b00;
  end
=======
    //POS
    assign led[0] = (sw[1] | sw[0]) & (~sw[1] | ~sw[0]);
    
    assign led[1] = (sw[3] | sw[2] | ~sw[1]) & 
    (sw[3] | ~sw[2] | sw[1]) &
    (~sw[3] | sw[2] | sw[1]) & 
    (~sw[3] | ~sw[2] | sw[1] ) &
    (~sw[3] | ~sw[2] | ~sw[1]);
    
    assign led[2] = (sw[7] | sw[6] | sw[5] | sw[4]) & 
    (sw[7] | sw[6] | ~sw[5] | sw[4]) &
    (sw[7] | ~sw[6] | sw[5] | ~sw[4]) & 
    (sw[7] | ~sw[6] | ~sw[5] | sw[4]) &
    (sw[7] | ~sw[6] | ~sw[5] | ~sw[4]) & 
    (~sw[7] | sw[6] | sw[5] | sw[4]) &
    (~sw[7] | sw[6] | sw[5] | ~sw[4]) & 
    (~sw[7] | sw[6] | ~sw[5] | sw[4]) &
    (~sw[7] | sw[6] | ~sw[5] | ~sw[4]) & 
    (~sw[7] | ~sw[6] | sw[5] | sw[4]) &
    (~sw[7] | ~sw[6] | sw[5] | ~sw[4]) & 
    (~sw[7] | ~sw[6] | ~sw[5] | sw[4]);
    
    assign led[3] = (sw[6] | sw[5] | sw[4] | sw[3]) & 
    (sw[6] | sw[5] | ~sw[4] | sw[3]) &
    (~sw[6] | sw[5] | sw[4] | sw[3]) &
    (~sw[6] | ~sw[5] | ~sw[4] | ~sw[3]) &
    (~sw[6] | sw[5] | ~sw[4] | sw[3]) &
    (sw[6] | ~sw[5] | ~sw[4] | ~sw[3]) &
    (sw[6] | ~sw[5] | sw[4] | ~sw[3]) &
    (~sw[6] | ~sw[5] | sw[4] | ~sw[3]);
>>>>>>> master
endmodule
