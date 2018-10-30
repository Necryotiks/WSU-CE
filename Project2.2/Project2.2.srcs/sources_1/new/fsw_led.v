`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2018 02:45:29 PM
// Design Name: 
// Module Name: fsw_led
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
 module fsw_led(
 output led,
<<<<<<< HEAD
 input [4:0] sw
    );
    //SOP
    //Odd number of high inputs turn the light on. 4 inputs
//    assign led = 
//    (~sw[3] & ~sw[2] & ~sw[1] & sw[0]) | //0001
//    (~sw[3] & ~sw[2] & sw[1] & ~sw[0]) | //0010
//    (~sw[3] & sw[2] & ~sw[1] & ~sw[0]) | //0100
//    (~sw[3] & sw[2] & sw[1] & sw[0])   | //0111
//    (sw[3] & ~sw[2] & ~sw[1] & ~sw[0]) | //1000
//    (sw[3] & ~sw[2] & sw[1] & sw[0])   | //1011
//    (sw[3] & sw[2] & ~sw[1] & sw[0])   | //1101
//    (sw[3] & sw[2] & sw[1] & ~sw[0]);    //1110

assign led = (~sw[4] & ~sw[3] & ~sw[2] & ~sw[1] & sw[0]) | //00001
(~sw[4] & ~sw[3] & ~sw[2] & sw[1] & ~sw[0]) | //00010
(~sw[4] & ~sw[3] & sw[2] & ~sw[1] & ~sw[0]) | //00100
(~sw[4] & ~sw[3] & sw[2] & sw[1] & sw[0])   | //00111
(~sw[4] & sw[3] & ~sw[2] & ~sw[1] & ~sw[0]) | //01000
(~sw[4] & sw[3] & ~sw[2] & sw[1] & sw[0])   | //01011
(~sw[4] & sw[3] & sw[2] & ~sw[1] & sw[0])   | //01101
(~sw[4] & sw[3] & sw[2] & sw[1] & ~sw[0])   | //01110
(sw[4] & ~sw[3] & ~sw[2] & ~sw[1] & ~sw[0]) | //10000
(sw[4] & ~sw[3] & ~sw[2] & sw[1] & sw[0])   | //10011
(sw[4] & ~sw[3] & sw[2] & ~sw[1] & sw[0])   | //10101
(sw[4] & ~sw[3] & sw[2] & sw[1] & ~sw[0])   | //10110
(sw[4] & sw[3] & ~sw[2] & ~sw[1] & sw[0])   | //11001
(sw[4] & sw[3] & ~sw[2] & sw[1] & ~sw[0])   | //11010
(sw[4] & sw[3] & sw[2] & ~sw[1] & ~sw[0])   | //11100
(sw[4] & sw[3] & sw[2] & sw[1] &  sw[0]);     //11111  
=======
 input [3:0] sw
    );
    //SOP
    //Odd number of high inputs turn the light on.
    assign led = 
    (~sw[3] & ~sw[2] & ~sw[1] & sw[0]) | //0001
    (~sw[3] & ~sw[2] & sw[1] & ~sw[0]) | //0010
    (~sw[3] & sw[2] & ~sw[1] & ~sw[0]) | //0100
    (~sw[3] & sw[2] & sw[1] & sw[0])   | //0111
    (sw[3] & ~sw[2] & ~sw[1] & ~sw[0]) | //1000
    (sw[3] & ~sw[2] & sw[1] & sw[0])   | //1011
    (sw[3] & sw[2] & ~sw[1] & sw[0])   | //1101
    (sw[3] & sw[2] & sw[1] & ~sw[0]);    //1110
>>>>>>> master
endmodule