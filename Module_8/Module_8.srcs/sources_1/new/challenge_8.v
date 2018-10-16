`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2018 03:53:42 PM
// Design Name: 
// Module Name: BCD_Counter
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


module challenge_8(
 input i_CLK,
 input i_RST,
 input [7:0] i_SW,
 output [6:0] o_Cathodes,
 output reg [3:0] o_Anodes
    );
   
    wire w_CLK;
    wire w_RST;
    wire w_SUBCLK_1HZ;
    wire [3:0] w_DATA;
    wire [3:0] w_ANODE;
    wire [6:0] w_CATHODE_0;
    reg [3:0] r_counter; 
    assign w_CLK = i_CLK;
    assign w_RST = i_RST;
    assign o_Cathodes = w_CATHODE_0;

    //assign o_Anodes = 4'b0111;
    

      
        HZ_Counter #(.c_NUM(50000000)) SVD_CLK(
         .i_CLK(w_CLK),
         .i_RST(w_RST),
         .o_Out(w_SUBCLK_1HZ)
          );
          
          
          
  
    
always@(posedge w_SUBCLK_1HZ)
begin
    if(i_SW[0] == 0)
        r_counter <= i_SW[7:4];
     else
        if (r_counter == 4'd9)
            r_counter <= 4'd0;
        else
            r_counter <= r_counter + 1'd1;
end

always@(posedge w_SUBCLK_1HZ)
begin
    case(i_SW[2:1])
        2'b00: o_Anodes = 4'b1110;
        2'b01: o_Anodes = 4'b1101;
        2'b10: o_Anodes = 4'b1011;
        2'b11: o_Anodes = 4'b0111;
        default: o_Anodes = 4'b1111;
    endcase
end
    
    ssd_dec digits(
    .i_CLK(w_CLK),
    .i_Num(r_counter),
    .cathode(w_CATHODE_0)
    );
endmodule
