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
    localparam ST0 = 2'b00; //reset
    localparam ST1 = 2'b01;//start
    localparam ST2 = 2'b10; //stop
    localparam ST3 = 2'b11; //inc
    
    reg [1:0] r_CURRENT_STATE = ST0;
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
            ST0:
                begin
                    if(w_Start == 1'b1)
                        begin
                            r_NEXT_STATE = ST1;
                        end
                    else if(w_Inc == 1'b1)
                        begin
                            r_ENABLE = 1'b1;
                            r_NEXT_STATE = ST3;
                        end
                     else
                          r_NEXT_STATE = ST0;   
                end
          ST1:
                begin
                     if(w_Stop == 1'b1)
                        begin
                            r_ENABLE <= 1'b0;
                            r_NEXT_STATE = ST2;
                        end
                     else
                         begin
                            r_ENABLE <= w_SUBCLK;
                            r_NEXT_STATE = ST1;
                         end   
                end
           ST2:
                begin
                    if(w_Start == 1'b1)
                        begin
                            r_ENABLE <= w_SUBCLK;
                            r_NEXT_STATE = ST1;
                        end
                    else if(w_Inc == 1'b1)
                        begin
                            r_ENABLE = 1'b1;
                            r_NEXT_STATE = ST3;
                        end
                     else
                        begin
                            r_ENABLE <= 1'b0;  
                            r_NEXT_STATE = ST2;
                        end                            
                end
           ST3:
                begin
                    r_ENABLE = 1'b1;
                    r_NEXT_STATE = ST2;
                end 
           default:
                    r_NEXT_STATE = ST0;         
           endcase
    end
    
    always@(posedge w_SUBCLK,posedge w_RST)
    begin
        if(w_RST == 1'b1)
            r_CURRENT_STATE = ST0;
        else
            r_CURRENT_STATE = r_NEXT_STATE;
    end
endmodule
