`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2019 04:33:40 PM
// Design Name: 
// Module Name: testbench_FIFO
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


module testbench_FIFO #(parameter FIFO_DEPTH = 8,parameter FIFO_WIDTH = 8) (
    input wire i_CLK,
    input wire i_RST,
    input wire [FIFO_WIDTH-1:0] i_DATA_IN,
    input wire i_DIN_EN,
    input wire i_DATA_REQUEST,
    output reg [FIFO_WIDTH-1:0]  o_DATA_OUT,
    output reg o_DATA_SENT
    );
    
    
    genvar i;
    reg r_SHIFT;
    wire [FIFO_DEPTH-1:0] w_INTERCONNECT[FIFO_WIDTH-1:0];
    
    //TODO: ADD A STATE MACHINE.
    
        PIPO #(.WIDTH(FIFO_WIDTH)) REG__START //MAYBE FIX THIS
        (
        .i_CLK(i_CLK),
        .i_RST(i_RST),
        .i_LOAD(r_SHIFT),
        .i_DIN(i_DATA_IN),
        .o_DOUT(w_INTERCONNECT[0])
        );
    generate
        for(i = 1; i < FIFO_DEPTH; i = i + 1)
        begin: REGISTERS
        PIPO #(.WIDTH(FIFO_WIDTH)) REG_X
        (
        .i_CLK(i_CLK),
        .i_RST(i_RST),
        .i_LOAD(r_SHIFT),
        .i_DIN(w_INTERCONNECT[i-1]),
        .o_DOUT(w_INTERCONNECT[i])
        );
        end
    endgenerate
    
    always@(posedge i_CLK)
    begin
        o_DATA_SENT = r_SHIFT;
        if(i_DATA_REQUEST == 1'b1)
            begin
            r_SHIFT = 1'd1;
                o_DATA_OUT = w_INTERCONNECT[FIFO_DEPTH-1];    
            end
        else
            begin
                r_SHIFT = 1'd0;
                o_DATA_OUT = o_DATA_OUT;  
            end
    end
    
    
    
endmodule
