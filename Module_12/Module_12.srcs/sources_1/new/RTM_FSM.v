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


module RTM_FSM(
    input i_CLK1KHZ,
    input i_RST,
    input [12:0] i_CVAL,
    input i_Start,
    input i_React,
    output [1:0] o_Ready,
    output o_SWEN,
    output o_ACC_EN,
    output o_DONE,
    output [2:0] o_T_NUM,
    output o_SRST,
    output o_CEN
    );
    
    localparam s_GET_COUNTER = 3'b000;
    localparam s_COUNTDOWN = 3'b001;
    localparam s_SW_RUNNING = 3'b010;
    localparam s_SW_STOPPED = 3'b011;
    localparam s_COLLECTION_COMPLETE = 3'b100;
    
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
    reg r_SRST;
    wire [2:0] w_T_NUM;
    
    
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
    assign o_T_NUM = w_T_NUM;
    assign w_T_NUM = r_TRIAL_COUNT;
    assign o_SRST = r_SRST;
    always@(*)
    begin
        case(r_CURRENT_STATE)
            s_GET_COUNTER:
                        begin
                            if(w_Start == 1'd1) 
                                begin
                                r_NEXT_STATE = s_COUNTDOWN;
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
                            if(r_TRIAL_COUNT == 3'b111)
                                r_NEXT_STATE = s_COLLECTION_COMPLETE;
                            else
                                r_NEXT_STATE = s_GET_COUNTER;
                       end
           s_COLLECTION_COMPLETE:
                                r_NEXT_STATE = s_COLLECTION_COMPLETE;
           default: r_NEXT_STATE = s_GET_COUNTER;          
        endcase
    end
    
    always@(posedge w_CLK1KHZ or posedge w_RST) //RESET LOGIC
    begin
        if(w_RST == 1'd1) 
            r_CURRENT_STATE = s_GET_COUNTER;
        else
            r_CURRENT_STATE = r_NEXT_STATE;
    end
    
    always@(posedge w_CLK1KHZ) //ACCUMULATE
    begin
        if(w_RST == 1'd1)
            r_TRIAL_COUNT = 3'd0;
        else if(r_CURRENT_STATE == s_SW_STOPPED) begin
            r_ACC_EN = 1'b1;
            r_TRIAL_COUNT = r_TRIAL_COUNT + 1'd1;
            r_SRST = 1'b1;
            end
        else
            begin
            r_ACC_EN = 1'b0;  
            r_TRIAL_COUNT = r_TRIAL_COUNT + 1'd0;  
            r_SRST = 1'b0;       
            end       
    end
    
    
    always@(posedge w_CLK1KHZ) //clock logic
    begin
        if(r_CURRENT_STATE == s_SW_RUNNING)
            begin
            r_SWEN = 1'b1;
            r_Ready = 2'b11;
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
            r_CEN = 1'b1;
        else
            r_CEN = 1'b0;  
    end
    
    always@(posedge w_CLK1KHZ)
        begin
            if(r_CURRENT_STATE == s_COUNTDOWN)
                r_COUNTER = r_COUNTER + 1'd1;
            else
                r_COUNTER = r_COUNTER + 1'd0;   
        end
    always@(posedge w_CLK1KHZ)
        begin
            if(r_CURRENT_STATE == s_COLLECTION_COMPLETE)
                r_DONE = 1'b1;
            else
                r_DONE = 1'b0;   
        end
endmodule
