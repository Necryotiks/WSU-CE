`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 05:26:59 PM
// Design Name: 
// Module Name: majority_of_five_tb
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


module majority_of_five_tb(
    );
    
reg [4:0] r_SW;
wire w_LED;

integer v_i;

majority_of_five uut(
.i_SW(r_SW),
.o_LED(w_LED)
);

initial begin
r_SW = 5'b00000;
    for(v_i = 0; v_i < 32; v_i = v_i + 1)
        #20 r_SW = v_i;
        
    #20 $finish;
end
endmodule
