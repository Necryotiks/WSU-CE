`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2018 12:44:02 AM
// Design Name: 
// Module Name: stopwatchFSM
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


module stopwatchFSM(
    input i_Start,
    input i_Stop,
    input i_Inc,
    input i_RST,
    input i_CLK1KHZ,
    output o_ENABLE
    );
    localparam s_RESET = 2'b00; //reset
    localparam s_START = 2'b01;//start
    localparam s_STOP = 2'b10; //stop
    localparam s_INCREMENT = 2'b11; //inc
    
    reg [1:0] r_CURRENT_STATE = s_RESET;
    reg [1:0] r_NEXT_STATE;
    reg r_ENABLE;
    wire w_Start;
    wire w_Stop;
    wire w_Inc;
    wire w_RST;
    wire w_SUBCLK;
    
    assign w_Start = i_Start;
    assign w_Stop = i_Stop;
    assign w_Inc = i_Inc;
    assign w_RST = i_RST;
    assign w_SUBCLK = i_CLK1KHZ;
    assign o_ENABLE = r_ENABLE; 
  
    
    
    always@(*)
    begin
        case(r_CURRENT_STATE)
            s_RESET:
                begin
                    if(w_Start == 1'b1)
                        begin
                            r_NEXT_STATE = s_START;
                        end
                    else if(w_Inc == 1'b1)
                        begin
                            r_NEXT_STATE = s_INCREMENT;
                        end
                     else
                          r_NEXT_STATE = s_RESET;   
                end
            s_START:
                begin
                     if(w_Stop == 1'b1)
                        begin
                            r_NEXT_STATE = s_STOP;
                        end
                     else
                         begin
                            r_ENABLE <= w_SUBCLK;
                            r_NEXT_STATE = s_START;
                         end   
                end
            s_STOP:
                begin
                    if(w_Start == 1'b1)
                        begin
                            r_NEXT_STATE = s_START;
                        end
                    else if(w_Inc == 1'b1)
                        begin
                            r_NEXT_STATE = s_INCREMENT;
                        end
                     else
                        begin
                            r_ENABLE = 1'b0;  
                            r_NEXT_STATE = s_STOP;
                        end                            
                end
            s_INCREMENT:
                begin
                    r_ENABLE = 1'b1;
                    if(w_Inc == 1'b1)
                        r_NEXT_STATE = s_INCREMENT;
                    else
                        r_NEXT_STATE = s_STOP;
                end 
            default:
                r_NEXT_STATE = s_RESET;         
           endcase
    end
    
    always@(posedge w_SUBCLK,posedge w_RST)
    begin
        if(w_RST == 1'b1)
            r_CURRENT_STATE = s_RESET;
        else
            r_CURRENT_STATE = r_NEXT_STATE;
    end
endmodule
