`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/13/2018 12:01:59 AM
// Design Name: 
// Module Name: cordic_div
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


module cordic_div #(parameter MAX_WIDTH = 32)(
    input i_CLK,
    input i_RST,
    input [MAX_WIDTH-1:0] i_Xin,
    input [MAX_WIDTH-1:0] i_Yin, //currently y >= x
    input [MAX_WIDTH-1:0] i_Zin,
    output [MAX_WIDTH-1:0] o_Xout,
    output [MAX_WIDTH-1:0] o_Yout,
    output [MAX_WIDTH-1:0] o_Zout
    );
    
    
    wire signed [31:0] w_ATAN_LUT[0:30];
    wire w_CLK;
    assign w_CLK = i_CLK;
    //TODO: change binary to decimal
//    assign w_ATAN_LUT[0] = 32'b00100000000000000000000000000000; //(2^32*atan(2^-i)) / 360
//    assign w_ATAN_LUT[1] = 32'b00010010111001000000010100011101;
//    assign w_ATAN_LUT[2] = 32'b00010010111001000000010100011101;
//    assign w_ATAN_LUT[3] = 32'b00000101000100010001000111010100;
//    assign w_ATAN_LUT[4] = 32'b00000010100010110000110101000011;
//    assign w_ATAN_LUT[5] = 32'b00000001010001011101011111100001;
//    assign w_ATAN_LUT[6] = 32'b00000000101000101111011000011110;
//    assign w_ATAN_LUT[7] = 32'b00000000010100010111110001010101;
//    assign w_ATAN_LUT[8] = 32'b00000000001010001011111001010011;
//    assign w_ATAN_LUT[9] = 32'b00000000000101000101111100101110;
//    assign w_ATAN_LUT[10] = 32'b00000000000010100010111110011000;
//    assign w_ATAN_LUT[11] = 32'b00000000000001010001011111001100;
//    assign w_ATAN_LUT[12] = 32'b00000000000000101000101111100110;
//    assign w_ATAN_LUT[13] = 32'b00000000000000010100010111110011;
//    assign w_ATAN_LUT[14] = 32'b00000000000000001010001011111001;
//    assign w_ATAN_LUT[15] = 32'b00000000000000000101000101111100;
//    assign w_ATAN_LUT[16] = 32'b00000000000000000010100010111110;
//    assign w_ATAN_LUT[17] = 32'b00000000000000000001010001011111;
//    assign w_ATAN_LUT[18] = 32'b00000000000000000000101000101111;
//    assign w_ATAN_LUT[19] = 32'b00000000000000000000010100010111;
//    assign w_ATAN_LUT[20] = 32'b00000000000000000000001010001011;
//    assign w_ATAN_LUT[21] = 32'b00000000000000000000000101000101;
//    assign w_ATAN_LUT[22] = 32'b00000000000000000000000010100010;
//    assign w_ATAN_LUT[23] = 32'b00000000000000000000000001010001;
//    assign w_ATAN_LUT[24] = 32'b00000000000000000000000000101000;
//    assign w_ATAN_LUT[25] = 32'b00000000000000000000000000010100;
//    assign w_ATAN_LUT[26] = 32'b00000000000000000000000000001010;
//    assign w_ATAN_LUT[27] = 32'b00000000000000000000000000000101;
//    assign w_ATAN_LUT[28] = 32'b00000000000000000000000000000010;
//    assign w_ATAN_LUT[29] = 32'b00000000000000000000000000000001;
//    assign w_ATAN_LUT[30] = 32'b00000000000000000000000000000000;
    
    reg signed [MAX_WIDTH:0] r_X_SERIES [0:MAX_WIDTH-1];
    reg signed [MAX_WIDTH:0] r_Y_SERIES [0:MAX_WIDTH-1];
    reg signed [MAX_WIDTH:0] r_Z_SERIES [0:MAX_WIDTH-1];
    wire [1:0] w_QUADRANT;
    assign w_QUADRANT = i_Zin[MAX_WIDTH-1:MAX_WIDTH-2];
    
    always@(posedge w_CLK)
    begin
        
    end
    
    
    genvar i;
    generate
    for (i=0; i < (MAX_WIDTH-1); i=i+1)
    begin: xyz
      wire z_sign;
      wire signed [MAX_WIDTH:0] x_shr, y_shr,z_shr;
  
      assign x_shr = r_X_SERIES[i] >>> i; // signed shift right
      assign y_shr = r_Y_SERIES[i] >>> i;
      assign z_shr = r_Z_SERIES[i] >>> i;
      //the sign of the current rotation angle
      assign z_sign = r_Z_SERIES[i][MAX_WIDTH-1];
  
      always @(posedge w_CLK)
      begin
        // add/subtract shifted data
        r_X_SERIES[i+1] <= r_X_SERIES[i];
        r_Y_SERIES[i+1] <= z_sign ? r_Y_SERIES[i] - x_shr : r_Y_SERIES[i] + x_shr;
        r_Z_SERIES[i+1] <= z_sign ? r_Z_SERIES[i] + z_shr : r_Z_SERIES[i] - z_shr;
      end
    end
  endgenerate
    assign o_Zout = r_Z_SERIES[MAX_WIDTH-1];
endmodule
