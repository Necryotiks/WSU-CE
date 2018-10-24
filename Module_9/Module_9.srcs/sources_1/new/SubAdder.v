`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2018 03:54:35 PM
// Design Name: 
// Module Name: SubAdder
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


module SubAdder(
    input i_CLK,
    input [7:0] i_A,
    input [7:0] i_B,
    input i_Sub,
    output o_Carry,
    output [7:0] o_Sum
    );
    
    wire w_CLK;
    wire [7:0] w_A;
    wire [7:0] w_B;
    wire  w_Sub;
    reg r_Carry;
    reg [7:0] r_Sum;
    
    assign w_CLK = i_CLK;
    assign w_A = i_A;
    assign w_B = i_B;
    assign w_Sub = i_Sub;
    assign o_Carry = r_Carry;
    assign o_Sum = r_Sum;
    
    always@(posedge i_CLK)
    begin
        if (w_Sub == 0)
            begin
                if(w_A[7] & w_B[7] == 1)
                    begin
                    {r_Carry,r_Sum} <= w_A + w_B; 
                    //pos led
                    end
                else if(~(w_A[7] | w_B[7]) == 1)
                    begin
                    {r_Carry,r_Sum} <= w_A + w_B;
                    //set negative flag here
                    end
                 else
                    begin
                    end
            end
        else
            begin
                
            end
    end
endmodule
