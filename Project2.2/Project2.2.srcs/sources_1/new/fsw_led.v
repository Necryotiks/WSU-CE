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
endmodule
