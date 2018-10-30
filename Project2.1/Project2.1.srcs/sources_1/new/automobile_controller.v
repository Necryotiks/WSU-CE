`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 01:00:26 AM
// Design Name: 
// Module Name: automobile_controller
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


module automobile_controller(
    input CL,
    input OL,
    input CT,
    input OT,
    output [1:0] WARN
    );
    
    
    assign WARN[0] = (CL | OL ) | (OT & ~OL) | (CT & OL); //maybe exclusive or?
    assign WARN[1] = (CT & CL) | (OT & OL) | (CT & OT) | (CL & OL & CT & ~OL);
    
endmodule
