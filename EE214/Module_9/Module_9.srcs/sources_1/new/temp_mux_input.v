`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2018 01:37:26 PM
// Design Name: 
// Module Name: temp_mux_input
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


module temp_mux_input(
input i_CLK,
input [3:0] w_SUM,
output reg [3:0] r_SSD_0,
output reg [3:0] r_SSD_1
    );
    
    
     always@(posedge i_CLK)
       begin
         if(w_SUM >= 4'd10)
               begin
                   r_SSD_0 <= w_SUM - 4'd10;
                   r_SSD_1 <= 4'd1;
               end
           else        
               begin
                   r_SSD_0 <= w_SUM;
                   r_SSD_1 <= 4'd0;
               end    
       end
endmodule
