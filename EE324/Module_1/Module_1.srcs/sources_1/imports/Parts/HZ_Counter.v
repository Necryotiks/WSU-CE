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
    output o_Out
    );
    
    parameter c_NUM = 0; //Overide via parameter
    reg [31:0] r_Count;
    reg r_Out;
    wire w_CLK;
    wire w_RST;
    wire w_OUT;
    assign w_CLK = i_CLK;
    assign w_RST = i_RST;
    assign o_Out = w_OUT;
    always @ (posedge(w_CLK) or posedge(w_RST)) //Counter
    begin
        if (w_RST == 1'b1)
            r_Count <= 32'b0;
        else if (r_Count == c_NUM - 1)
            r_Count <= 32'b0;
        else
            r_Count <= r_Count + 1;
    end
    
    always @ (posedge(w_CLK) or posedge(w_RST)) //FF with comparator
    begin
        if (w_RST == 1'b1)
            r_Out <= 1'b0;
        else if (r_Count == c_NUM - 1) // if r_Count = 49999999 flip output
            r_Out <= ~r_Out;
        else
            r_Out <= r_Out;
        end
        
        BUFGCE(
            .I(w_CLK),
            .O(w_OUT),
            .CE(r_Out) 
        );
endmodule
