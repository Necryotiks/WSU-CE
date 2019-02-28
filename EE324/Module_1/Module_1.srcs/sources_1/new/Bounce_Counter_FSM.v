`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2019 03:40:00 PM
// Design Name: 
// Module Name: Bounce_Counter_FSM
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


module Bounce_Counter_FSM(
    input i_CLK,
    input i_RST,
    input i_Signal,
    output o_CEN
    );
    
    localparam s_WAIT = 2'd0;
    localparam s_ASSERT = 2'd1;
    localparam s_DONE = 2'd2;
  
    wire w_CLK;
    wire w_RST;
    wire w_Signal;
    reg r_CEN = 1'd0;
    reg [1:0] r_NEXT_STATE = 2'd0;
    reg [1:0] r_CURRENT_STATE = 2'd0;
   
   assign w_CLK = i_CLK;
   assign w_RST = i_RST;
   assign w_Signal = i_Signal;
   assign o_CEN = r_CEN;
   always@(*)
   begin
        case(r_CURRENT_STATE)
            s_WAIT:
                begin
                    if(i_Signal == 1'd1) begin
                        r_CEN <= 1'd1;
                        r_NEXT_STATE <= s_ASSERT;
                        end
                    else 
                    begin
                        r_CEN <= 1'd0;
                        r_NEXT_STATE <= s_WAIT;
                    end
                end
            s_ASSERT:
                begin
                    if(i_Signal == 1'd1) begin
                        r_CEN <= 1'd1;
                        r_NEXT_STATE <= s_ASSERT;
                        end
                    else
                        begin
                        r_CEN <= 1'd0;
                        r_NEXT_STATE <= s_DONE;
                        end
                end
             s_DONE:
                begin
                    r_CEN <= 1'd0;
                    r_NEXT_STATE <= s_DONE;
                end
              default: r_NEXT_STATE <= s_WAIT;
             endcase 
   end
    
   always@(posedge w_CLK or posedge w_RST)
   begin
        if(w_RST == 1'd1)
            r_CURRENT_STATE <= s_WAIT;
        else
            r_CURRENT_STATE <= r_NEXT_STATE;
   end
   
   
endmodule
