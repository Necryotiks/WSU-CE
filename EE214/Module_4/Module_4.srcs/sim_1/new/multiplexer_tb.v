`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2018 09:01:36 PM
// Design Name: 
// Module Name: multiplexer_tb
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


module multiplexer_tb(
    );
    
    reg [7:0] r_I0; //two bits to light up 2 leds.
    reg [7:0] r_I1;
    reg [7:0] r_I2;
    reg [7:0] r_I3;
    reg [1:0] r_Sel;
    wire [7:0] w_Y;
    integer i;
    
    multiplexer_test uut(
    .i_I0(r_I0),
    .i_I1(r_I1),
    .i_I2(r_I2),
    .i_I3(r_I3),
    .i_Sel(r_Sel),
    .o_Y(w_Y)
    );
    
    initial begin
   #20 r_I0 = 8'd27;
   #20 r_I1 = 8'd42;
   #20 r_I2 = 8'd192;
   #20 r_I3 = 8'd255;
    
    #100;
    for(i = 0; i< 255; i = i +1)
        #20 r_Sel = (i % 4);
    
    #20 $finish;
    end
endmodule
