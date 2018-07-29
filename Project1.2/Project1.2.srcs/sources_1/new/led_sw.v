`timescale 1ns/1ps
module led_sw(
    output [15:0] led,
    input [7:0] sw
);
//LED CONFIGURATION CAN BE CHANGED HERE OR IN THE .XDC FILE.
//assign led[0:3] = sw[3:0];
//assign led[4] = sw[4];
//assign led[5] = sw[4];
//assign led[6] = sw[4];
//assign led[7] = sw[5];
//assign led[8] = sw[5];
//assign led[9] = sw[5];
//assign led[10] = sw[6];
//assign led[11] = sw[6];
//assign led[12] = sw[6];
//assign led[13] = sw[7];
//assign led[14] = sw[7];
//assign led[15] = sw[7];
assign led[0] = sw[7];
assign led[1] = sw[6];
assign led[2] = sw[5];
assign led[3] = sw[4];
assign led[6] = sw[3];
assign led[5] = sw[3];
assign led[4] = sw[3];
assign led[9] = sw[2];
assign led[8] = sw[2];
assign led[7] = sw[2];
assign led[12] = sw[1];
assign led[11] = sw[1];
assign led[10] = sw[1];
assign led[15] = sw[0];
assign led[14] = sw[0];
assign led[13] = sw[0];

endmodule
