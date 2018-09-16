`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2018 06:23:05 PM
// Design Name: 
// Module Name: counter_divider
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


module counter_divider(
    input i_CLK,
    input i_RST,
    output reg o_Out
    );
    
    parameter c_NUM = 49152; //1 khz at 50% duty cycle
    reg [31:0] r_Count;
    always @ (posedge(i_CLK), posedge(i_RST)) //Counter
    begin
        if (i_RST == 1'b1)
            r_Count <= 32'b0;
        else if (r_Count == c_NUM - 1)
            r_Count <= 32'b0;
        else
            r_Count <= r_Count + 1;
    end
    
    always @ (posedge(i_CLK), posedge(i_RST)) //FF with comparator
    begin
        if (i_RST == 1'b1)
            o_Out <= 1'b0;
        else if (r_Count == c_NUM - 1) // if r_Count = 49151 flip output
            o_Out <= ~o_Out;
        else
            o_Out <= o_Out;
    end
endmodule
