`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2018 08:08:23 PM
// Design Name: 
// Module Name: RTM_FSM
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

//TODO: ADD NEW STATE SO SVD SETTLES
module RTM_FSM(
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_CLK1KHZ CLK" *)
    input i_CLK1KHZ,
    input i_RST,
    input [12:0] i_CVAL,
    input i_Start, //Start the RTM
    input i_Terminate, //End RTM runs
    input i_React, //Save current run.
    output [1:0] o_Ready,
    output o_SWEN, //
    output o_ACC_EN,
    output o_DONE,
    output [2:0] o_T_NUM,
    output o_SRST,
    output [2:0] o_TRIAL_NUM,
    output o_CEN
    );
    
    localparam s_GET_COUNTER = 3'b000;
    localparam s_COUNTDOWN = 3'b001;
    localparam s_SW_RUNNING = 3'b010;
    localparam s_SW_STOPPED = 3'b011;
    localparam s_COLLECTION_COMPLETE = 3'b100;
    localparam s_HOLD = 3'b101;
    
    reg [2:0] r_CURRENT_STATE = 3'b00;
    reg [2:0] r_NEXT_STATE = 3'b00;
    reg r_CEN = 1'b0;
    reg r_SWEN = 1'b0;
    reg [1:0] r_Ready = 2'b00;
    reg [12:0] r_COUNTER = 13'd0;
    reg [2:0] r_TRIAL_COUNT = 3'd0;
    wire w_CLK1KHZ;
    wire w_RST;
    wire [12:0] w_CVAL;
    wire w_Start;
    wire w_React;
    reg r_ACC_EN = 1'b0;
    reg r_DONE = 1'b0;
    reg r_SRST = 1'b0;
    wire [2:0] w_T_NUM;
    wire w_Terminate;
    reg [5:0] r_HOLD_COUNT = 6'd0;
    
    assign w_CLK1KHZ = i_CLK1KHZ;
    assign w_RST = i_RST;
    assign o_CEN = r_CEN;
    assign o_SWEN = r_SWEN;
    assign w_CVAL = i_CVAL;
    assign w_Start = i_Start;
    assign w_React = i_React;
    assign o_Ready = r_Ready;
    assign o_ACC_EN = r_ACC_EN;
    assign o_DONE = r_DONE;
    assign o_T_NUM = r_TRIAL_COUNT;
    assign o_SRST = r_SRST; // tie to manual control
    assign w_Terminate = i_Terminate;
    assign o_TRIAL_NUM = r_TRIAL_COUNT;
    
    always@(*)
    begin
        case(r_CURRENT_STATE)
            s_GET_COUNTER:
                        begin
                            if(w_Start == 1'd1) 
                                begin
                                r_NEXT_STATE = s_COUNTDOWN;
                                end
                            else if((w_Terminate == 1'd1) & ((r_TRIAL_COUNT % 2) == 0) & (r_TRIAL_COUNT != 3'd6))
                                begin
                                    r_NEXT_STATE = s_HOLD;
                                end
                            else 
                                begin
                                r_NEXT_STATE = s_GET_COUNTER;
                                end
                        end
            s_COUNTDOWN:
                        begin
                        if(r_COUNTER == w_CVAL) begin
                            r_NEXT_STATE = s_SW_RUNNING; 
                            end
                        else begin
                            r_NEXT_STATE = s_COUNTDOWN;
                            end
                            
                        end
           s_SW_RUNNING:
                        begin
                             if(w_React == 1'd1) begin
                                r_NEXT_STATE = s_SW_STOPPED;
                                end
                             else begin
                                r_NEXT_STATE = s_SW_RUNNING;
                                end
                        end
           s_SW_STOPPED:
                       begin
                            if(r_TRIAL_COUNT == 3'b111) begin
                                r_NEXT_STATE = s_HOLD;
                             end
                            else
                                r_NEXT_STATE = s_GET_COUNTER;
                       end
           s_COLLECTION_COMPLETE:
                                r_NEXT_STATE = s_COLLECTION_COMPLETE;
           s_HOLD:
                    begin
                        if(r_HOLD_COUNT == 6'b111111)
                            r_NEXT_STATE = s_COLLECTION_COMPLETE;
                        else
                            r_NEXT_STATE = s_HOLD;    
                    end                
           default: r_NEXT_STATE = s_GET_COUNTER;          
        endcase
    end
    
    always@(posedge w_CLK1KHZ)
    begin
        if(w_RST == 1'd1)
            r_HOLD_COUNT <= 6'd0;
        else if (r_CURRENT_STATE == s_HOLD)
            r_HOLD_COUNT <= r_HOLD_COUNT + 1'b1;
        else
            r_HOLD_COUNT <= r_HOLD_COUNT + 1'b0;
    end  
    always@(posedge w_CLK1KHZ or posedge w_RST) //RESET LOGIC
    begin
        if(w_RST == 1'd1) begin
            r_CURRENT_STATE <= s_GET_COUNTER;
            end
        else
            r_CURRENT_STATE <= r_NEXT_STATE;
    end
    
    always@(posedge w_CLK1KHZ or posedge w_RST) //ACCUMULATE
    begin
         if(w_RST == 1'd1) begin
            r_TRIAL_COUNT <= 3'b000;
            r_ACC_EN = 1'b0;
            end
         else if(r_CURRENT_STATE == s_SW_STOPPED) 
            begin
            r_ACC_EN = 1'b1;
            r_TRIAL_COUNT <= r_TRIAL_COUNT + 1'd1;
       
            end
        else
            begin
            r_ACC_EN =  1'b0; 
            r_TRIAL_COUNT <= r_TRIAL_COUNT + 1'd0;  
                 
            end       
    end
    
    always@(posedge w_CLK1KHZ) //clock logic
    begin
        if(r_CURRENT_STATE == s_SW_RUNNING)
            begin
            r_SWEN <= 1'b1;
            r_Ready <= 2'b11;
            end
        else if (r_CURRENT_STATE == s_GET_COUNTER)
            begin
            r_Ready <= 2'd1;
            r_SWEN <= 1'b0;
            end
         else
            begin
            r_Ready = 2'd0;
            r_SWEN = 1'b0;
            end
    end
    
    always@(posedge w_CLK1KHZ)
    begin
        if(r_CURRENT_STATE == s_GET_COUNTER)
            r_CEN <= 1'b1;
        else
            r_CEN <= 1'b0;  
    end
    
    always@(posedge w_CLK1KHZ)
        begin
            if(r_CURRENT_STATE == s_COUNTDOWN) begin
                r_COUNTER <= r_COUNTER + 1'd1;
                r_SRST <= 1'd1;
                end
            else begin
                r_COUNTER <= r_COUNTER + 1'd0;
                r_SRST <= 1'd0;
                end   
        end
    always@(posedge w_CLK1KHZ)
        begin
            if(r_CURRENT_STATE == s_COLLECTION_COMPLETE) begin
                r_DONE <= 1'b1;
                end
            else 
                begin
                r_DONE <= 1'b0;  
                end
        end
endmodule
