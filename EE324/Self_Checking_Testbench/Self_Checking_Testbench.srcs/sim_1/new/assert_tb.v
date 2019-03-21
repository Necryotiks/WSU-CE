`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2019 03:33:04 PM
// Design Name: 
// Module Name: assert_tb
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


module assert_tb(

    );
    
    reg w_CLK = 1'b0;
    reg [3:0] w_A = 4'b1111;
    reg [3:0] w_B = 4'b1111;
    
    
    always
        #20 w_CLK = ~w_CLK;
        
    
    initial begin
    #100 w_B = 4'b1010;
    end
    
    assert #(.WIDTH(4)) testAssert(.i_CLK(w_CLK),.i_Data_Received(1'b1),.i_Expected(w_A),.i_Actual(w_B),.o_Data_Request());
endmodule
