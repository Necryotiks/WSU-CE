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
    input i_CLK,
    input i_RST,
    input i_A,
    input i_B,
    input i_Cin,
    output o_Sum,
    output o_Cout
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
<<<<<<< HEAD
                    if(i_A == 1'b0 && i_B == 1'b0 && i_Cin == 1'b0)
                        r_NEXT_STATE = STATE_0;
                    else if((i_A == 1'b1 && i_B == 1'b1) | ((i_A ^ i_B) & i_Cin))
=======
                    if(~(i_A | i_B | i_Cin))
                        r_NEXT_STATE = STATE_0;
                    else if(i_A & i_B & i_Cin)
>>>>>>> 8c676840f2d6ed352e8a720fb7e570aabcf8c2b5
                        r_NEXT_STATE = STATE_2;
                    else
                        r_NEXT_STATE = STATE_1;    
                end
            STATE_1:
                begin
                    if(i_A == 1'b0 && i_B == 1'b0 && i_Cin == 1'b0)
                        r_NEXT_STATE = STATE_0;
                    else if((i_A == 1'b1 && i_B == 1'b1) | ((i_A ^ i_B) & i_Cin))
                        r_NEXT_STATE = STATE_2;
                    else
                        r_NEXT_STATE = STATE_1;    
                end
            STATE_2:
                begin
                    if(i_A == 1'b0 && i_B == 1'b0 && i_Cin == 1'b1)
                        r_NEXT_STATE = STATE_1;
                    else if(i_A == 1'b1 && i_B == 1'b1 && i_Cin == 1'b1)
                        r_NEXT_STATE = STATE_3;
                    else
                        r_NEXT_STATE = STATE_2;    
                end
            STATE_3:
                begin
                    if(i_A == 1'b0 && i_B == 1'b0 && i_Cin == 1'b1 )
                        r_NEXT_STATE = STATE_1;
                    else if(i_A == 1'b1 && i_B == 1'b1 && i_Cin == 1'b1)
                        r_NEXT_STATE = STATE_3;
                    else
                        r_NEXT_STATE = STATE_2;    
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
    assign o_Sum = (r_PREV_STATE == STATE_1 || r_PREV_STATE == STATE_3 )? 1'b1:1'b0;
    assign o_Cout = (r_PREV_STATE == STATE_2 || r_PREV_STATE == STATE_3 )? 1'b1:1'b0;
endmodule
