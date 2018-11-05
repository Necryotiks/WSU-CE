`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2018 10:18:35 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [7:0] i_A,
    input [7:0] i_B,
    input [2:0] i_Sel,
    output  [7:0] o_Out,
    output [3:0] o_Status
    );
    
    
    wire [7:0] w_A;
    wire [7:0] w_B;
    wire [2:0] w_Sel;
    reg r_Carry;
    reg [7:0] r_Out;
    reg [3:0] r_Status;
    
    assign w_A = i_A;
    assign w_B = i_B;
    assign w_Sel = i_Sel;
    assign o_Out = r_Out;
    assign o_Status = r_Status;
    
    
    always@(i_A,i_B,i_Sel)
    begin
       // r_Status <= 4'd0;
        case(w_Sel)
            3'b000: {r_Carry,r_Out} = i_A + i_B;
            3'b001: {r_Carry,r_Out} = i_A + 1'd1;
            3'b010: {r_Carry,r_Out} = i_A - i_B;
            3'b011: r_Out = i_A ^ i_B;
            3'b100: r_Out = i_A | i_B;
            3'b101: r_Out = i_A & i_B;
        endcase
    end
always@(*)
begin
    r_Status[3:2] <= {2{r_Carry}};
end
   
always@(*)
begin
    if(r_Out == 8'd0)
        r_Status[0] <= 1'b1;
    else
        r_Status[0] <= 1'b0;
end

always@(*)
begin
    if((w_Sel == 3'b010) & (r_Carry == 1'b1))
        r_Status[1] <= 1'b1;
    else
        r_Status[1] <= 1'b0;   
end 
   
endmodule
