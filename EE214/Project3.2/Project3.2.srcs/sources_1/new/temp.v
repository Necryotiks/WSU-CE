`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2018 11:58:45 AM
// Design Name: 
// Module Name: temp
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

`timescale 1ns/1ps
module temp(
output led,
input [7:0] sw
    );

//sw[0] = A,sw[1] = B,sw[2] = C,sw[3] = D,sw[4]=E,sw[5] =F,sw[6]=G,sw[7] =H

<<<<<<< HEAD
<<<<<<< HEAD
///Between 160 and 186 
assign led = (sw[7] & ~sw[6] & sw[5] & ~sw[4]) | (sw[7] & ~sw[6] & sw[5] & ~sw[3]) |
(sw[7] & ~sw[6] & sw[5] & ~sw[2] & ~sw[1]) | (sw[7] & ~sw[6] & sw[5] & ~sw[2] & ~sw[0]);
=======
///FINISH LATER
assign led = (sw[7] & ~sw[6] & ~sw[5] & ~sw[4]) | (sw[7] & ~sw[6] & ~sw[5] & ~sw[3]) |
(sw[7] & ~sw[6] & ~sw[5] & ~sw[2] & ~sw[1]) | (sw[7] & ~sw[6] & ~sw[5] & ~sw[2] & ~sw[0]);
>>>>>>> master
=======
///FINISH LATER
assign led = (sw[7] & ~sw[6] & ~sw[5] & ~sw[4]) | (sw[7] & ~sw[6] & ~sw[5] & ~sw[3]) |
(sw[7] & ~sw[6] & ~sw[5] & ~sw[2] & ~sw[1]) | (sw[7] & ~sw[6] & ~sw[5] & ~sw[2] & ~sw[0]);
>>>>>>> 5ec567faa533c067fd38e29ea17d6632d7cd74e8
endmodule