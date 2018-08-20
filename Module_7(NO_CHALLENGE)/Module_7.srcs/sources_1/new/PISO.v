`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2018 12:38:52 PM
// Design Name: 
// Module Name: PISO
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


module PISO(
input [7:0] i_SW,
input i_SFT_LD,
input i_CLK,
output  [7:0] o_LED
    );
    reg [7:0] r_SW ;
    wire buffer;
// wire [7:0] w_Q = 8'd0;
// wire[7:0] w_O = 8'd0; 
// reg input_mux;
//dff dff0(
//.clk(i_CLK),
//.D(i_SW[0]),
//.Q(w_Q[0])    
// );
 

 
// genvar i;

//dff dff_in(
//.clk(i_CLK),
// .D(i_SW[0]),
// .rst(0),
// .Q(w_Q[0])
//);
 
//PISO_MUX PM_0(
//.SFTLD(i_SFT_LD),
//.Q(w_Q[0]),
//.D(i_SW[1]),
//.O(w_O[0])
//);
 
// generate
// for(i=1; i< 8; i= i+1)
// begin
//  dff dff_x(
// .clk(i_CLK),
// .D(w_O[i-1]),
// .rst(0),
// .Q(w_Q[i])
// );
// PISO_MUX PM_X(
// .SFTLD(i_SFT_LD),
// .Q(w_Q[i]),
// .D(i_SW[i]),
// .O(w_O[i])
// );
 
// end
// endgenerate.SFTLD(i_SFT_LD),
//.Q(w_Q[0]),
//.D(i_SW[1]),
//.O(w_O[0])
//);
 
// generate
// for(i=1; i< 8; i= i+1)
// begin
//  dff dff_x(
// .clk(i_CLK),
// .D(w_O[i-1]),
// .rst(0),
// .Q(w_Q[i])
// );
// PISO_MUX PM_X(
// .SFTLD(i_SFT_LD),
// .Q(w_Q[i]),
// .D(i_SW[i]),
// .O(w_O[i])
// );
 
// end
// endgenerate
assign buffer = r_SW[7];
assign o_LED = r_SW;

always@(posedge(i_CLK))
begin
    if(i_SFT_LD == 0)
        r_SW = i_SW;
    else
    begin
        
        r_SW = r_SW << 1;
        r_SW[0] = buffer;
    end
    
end
endmodule
