`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2018 10:44:35 PM
// Design Name: 
// Module Name: counter_divider_1Hz
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


module counter_divider_1Hz(

    input i_CLK,
    input i_RST,
    output reg o_Out
    );
    
    parameter c_NUM = 1000; //1 hz at 50% duty cycle
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
        else if (r_Count == c_NUM - 1) // if r_Count = 499 flip output
            o_Out <= ~o_Out;
        else
            o_Out <= o_Out;
    end
endmodule
