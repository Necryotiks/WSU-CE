`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2018 12:15:35 PM
// Design Name: 
// Module Name: HZ_Counter
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


module HZ_Counter(
input i_CLK,
    input i_RST,
    output reg o_Out
    );
    
    parameter c_NUM = 0; //Overide via parameter
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
        else if (r_Count == c_NUM - 1) // if r_Count = 49999999 flip output
            o_Out <= ~o_Out;
        else
            o_Out <= o_Out;
        end
endmodule
