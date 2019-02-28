`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2018 11:04:01 PM
// Design Name: 
// Module Name: SerialAdder
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


module SerialAdder(
//    input A,
//input B,
//output F,
//output Cout,
//input clk,
//input rst
//);

//// Define State Codes
//localparam S0 = 2'b00;
//localparam S1 = 2'b01;
//localparam S2 = 2'b10;
//localparam S3 = 2'b11;

//reg [1:0] pState, nState;

//// Combinational Logic: Next State Logic
//always @ (pState, A, B)
//begin
//case (pState)
//    S0:begin
//        if (A == 1'b0 && B == 1'b0)
//            nState = S0;
//        else if (A == 1'b1 && B == 1'b1)
//            nState = S2;
//        else
//            nState = S1;
//        end
//    S1:
//        if (A == 1'b0 && B == 1'b0)
//            nState = S0;
//        else if (A == 1'b1 && B == 1'b1)
//            nState = S2;
//        else
//            nState = S1;
//    S2:
//        if (A == 1'b0 && B == 1'b0)
//            nState = S1;
//        else if (A == 1'b1 && B == 1'b1)
//            nState = S3;
//        else
//            nState = S2;
//    S3:
//        if (A == 1'b0 && B == 1'b0)
//            nState = S1    ;
//        else if (A == 1'b1 && B == 1'b1)
//            nState = S3;
//        else
//            nState = S2;
//    default:
//        nState = S0;
//endcase
//end

//// State Registers
//always @ (posedge(clk), posedge(rst))
//begin
//if (rst == 1'b1)
//    pState <= S0;
//else
//    pState <= nState;
//end

//// Output Logic
//assign F = (pState == S1 || pState == S3) ? 1'b1 : 1'b0;
//assign Cout = (pState == S2 || pState == S3) ? 1'b1 : 1'b0;

    input i_CLK,
    input i_RST,
    input i_A,
    input i_B,
    input i_Cin,
    output reg o_Sum,
    output reg o_Cout
    );
    
    
    localparam STATE_0 = 2'b00; // sum & carry = 0
    localparam STATE_1 = 2'b01; //sum 1
    localparam STATE_2 = 2'b10; // carry 1
    localparam STATE_3 = 2'b11; //sum and carry 1
    
    reg [1:0] r_PREV_STATE;
    reg [1:0] r_NEXT_STATE;
    
    always@(r_PREV_STATE,i_A,i_B)
    begin
        case(r_PREV_STATE)  
            STATE_0:
                begin
                    if(i_A ^ i_B ^ i_Cin)
                        begin
                            o_Sum = 1'b1;
                            r_NEXT_STATE = STATE_0;
                        end
                    if((i_A  & i_B) | ((i_A ^ i_B) & i_Cin))
                        begin
                            o_Cout = 1'b1;
                            r_NEXT_STATE = STATE_1;
                        end
                    else
                        begin
                            o_Sum = 1'b0;
                            o_Cout = 1'b0;
                            r_NEXT_STATE = STATE_0; 
                        end   
                end
            STATE_1:
                begin
                    if(i_A ^ i_B ^ i_Cin)
                        begin
                            o_Sum = 1'b1;
                            r_NEXT_STATE = STATE_0;
                        end
                    if((i_A & i_B ) | ((i_A ^ i_B) & i_Cin))
                        begin
                            o_Cout = 1'b1;
                            r_NEXT_STATE = STATE_1;
                        end
                    else
                        begin
                        //o_Sum = 1'b0;
                        //o_Cout = 1'b0;
                            r_NEXT_STATE = STATE_0;
                        end    
                end
          
            default:
                r_NEXT_STATE = STATE_0;

        endcase
    end
    always@(posedge i_CLK,posedge i_RST)
    begin
        if(i_RST == 1'b1)
            r_PREV_STATE <= STATE_0;
        else   
            r_PREV_STATE <= r_NEXT_STATE;
    end

endmodule
