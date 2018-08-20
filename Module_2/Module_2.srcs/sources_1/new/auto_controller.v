`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 04:45:04 PM
// Design Name: 
// Module Name: auto_controller
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


module auto_controller(
    input i_CT,
    input i_CL,
    input i_OT,
    input i_OL,
    output reg [1:0]  o_WARN
    );
//    assign o_WARN[1:0] = (i_CL | i_OL ) | (i_OT & ~i_OL) | (i_CT & i_OL); //Yellow
//    assign o_WARN[1] = (i_CT & i_CL) | (i_OT & i_OL) | (i_CT & i_OT) | (i_CL & i_OL & i_CT & ~i_OL);
    
    always@(*)
    begin
        if ((i_CT & i_CL) | (i_OT & i_OL) | (i_CT & i_OT) | ((i_CL & i_OL) & (i_CT & ~i_OL)))
            o_WARN[1:0] <= 2'b01;
        else if ((i_CL | i_OL ) | (i_OT & ~i_OL) | (i_CT & i_OL))
            o_WARN[1:0] <= 2'b11;
        else
            o_WARN[1:0] = 2'b00;
    end
endmodule
