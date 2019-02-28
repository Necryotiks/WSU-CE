`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2018 07:47:13 PM
// Design Name: 
// Module Name: LSFR
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


module LSFR(
    input i_CLK,
    input i_RST,
    input i_EN,
    output [12:0] o_OUT
    );
    
    wire w_CLK;
    wire w_RST;
    wire w_EN;
    reg [12:0] r_OUT;
    
    assign w_CLK = i_CLK;
    assign w_RST = i_RST;
    assign w_EN = i_EN;
    assign o_OUT = r_OUT;
    always@(posedge w_CLK,posedge w_RST)
    begin
        if(w_RST == 1'b1)
            begin
                r_OUT <= 13'd1;
            end
        else if(w_EN == 1'd1)
            begin
                r_OUT <= {r_OUT[11:0],r_OUT[12] ^ r_OUT[11] ^ r_OUT[10] ^ r_OUT[7]};
            end
        else
            ;
    end
    
    //https://stackoverflow.com/questions/757151/random-number-generation-on-spartan-3e
    
    
    
endmodule
