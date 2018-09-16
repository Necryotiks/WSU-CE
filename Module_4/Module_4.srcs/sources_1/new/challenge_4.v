`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 11:46:52 PM
// Design Name: 
// Module Name: challenge_4
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


module challenge_4(
input i_SW_0,
input i_SW_1,
input i_SW_2,
input i_SW_3,
output reg o_LED
    );
    
always@(*)
begin
    casez({i_SW_3,i_SW_2,i_SW_1,i_SW_0})
        4'b0011: o_LED = 1'b1;
        4'b01?0: o_LED = 1'b1;
        4'b10?0: o_LED = 1'b1;
        4'b1?01: o_LED = 1'b1;
        default: o_LED = 1'b0;
    endcase
end 

endmodule
