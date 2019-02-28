`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2018 08:45:28 PM
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb;

reg [3:0] r_I;
reg r_EN_INPUT;
wire [1:0] w_Y;
wire w_GS;
wire w_EN_OUT;

integer i;

encoder uut(
.I(r_I),
.Enable_input(r_EN_INPUT),
.Y(w_Y),
.Group_signal(w_GS),
.Enable_output(w_EN_OUT)
);

initial begin
#20 r_I = 4'd0;
#20 r_EN_INPUT = 1'd1;
#100;
for(i=0;i< 16;i=i+1)
begin
    #20 r_I = i;
end
#20 $finish;
end

endmodule
