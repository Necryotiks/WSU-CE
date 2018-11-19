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
    output o_CEN
    );
    
    localparam s_GET_COUNTER = 2'd0;
    localparam s_COUNTDOWN = 2'd1;
    localparam s_SW_RUNNING = 2'd2;
    localparam s_SW_STOPPED = 2'd3;
    
    reg [1:0] r_CURRENT_STATE = 2'b00;
    reg [1:0] r_NEXT_STATE;
    reg r_CEN;
    reg r_SWEN;
    reg [1:0] r_Ready;
    reg [12:0] r_COUNTER = 13'd0;
    wire w_CLK1KHZ;
    wire w_RST;
    wire [12:0] w_CVAL;
    wire w_Start;
    wire w_React;
    
    assign w_CLK1KHZ = i_CLK1KHZ;
    assign w_RST = i_RST;
    assign o_CEN = r_CEN;
    assign o_SWEN = r_SWEN;
    assign w_CVAL = i_CVAL;
    assign w_Start = i_Start;
    assign w_React = i_React;
    assign o_Ready = r_Ready;
    always@(*)
    begin
        case(r_CURRENT_STATE)
            s_GET_COUNTER:
            begin
                if(w_Start == 1'd1)
                    ;//r_NEXT_STATE = s_COUNTDOWN;
                else
                    begin
                    r_Ready = 2'b01;
                    r_CEN = 1'd1;
                    r_SWEN <= 1'd0;
                    r_COUNTER = w_CVAL;
                   end
            end
            s_COUNTDOWN:
                begin
                if(r_COUNTER == 13'd0)
                    r_NEXT_STATE = s_SW_RUNNING; 
                else
                    begin
                        r_Ready = 2'b11;
                        r_CEN = 1'd0;
                        r_SWEN <= 1'd0;   
                        r_COUNTER = r_COUNTER - 1'd1;
                    end
                end
           s_SW_RUNNING:
           begin
                if(w_React == 1'd1)
                    r_NEXT_STATE = s_SW_STOPPED;
                else
                begin
                    r_SWEN <= w_CLK1KHZ;
                    r_CEN = 1'd0;
                end
           end
           s_SW_STOPPED:
           begin
                r_NEXT_STATE = s_GET_COUNTER;
                r_SWEN <= 1'd0;
                r_CEN = 1'd0;
           end
        endcase
    end
    
    always@(posedge w_CLK1KHZ,posedge w_RST)
    begin
        if(w_RST == 1'd1)
            r_CURRENT_STATE = s_GET_COUNTER;
        else
            r_CURRENT_STATE = r_NEXT_STATE;
    end
endmodule
