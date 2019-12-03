`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2019 11:45:25 AM
// Design Name: 
// Module Name: RAM_RANGLER_FSM
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


module RAM_RANGLER_FSM(
	input wire i_CLK,
	input wire i_RESETN,
	input wire [31:0] i_DATA,
	input wire i_VDE,
	input wire [15:0] i_HCNT,
	input wire [15:0] i_VCNT,
	input wire [15:0] i_END_OF_LINE,
	input wire [15:0]i_END_OF_SCREEN,
	input wire i_WRITE_REQUEST,
	output reg [3:0] o_CHAR_LINE_CNT,
	output reg [7:0] o_ASCII_VAL,
	output reg [7:0] o_FG_RED,
	output reg [7:0] o_FG_GREEN,
	output reg [7:0] o_FG_BLUE
);
localparam s_INIT = 0; //init bram
localparam s_READ = 1; //get char from bram
localparam s_WRITE = 2; //put char in bram
localparam s_WHOLD = 3; //wait for wren to deassert
localparam s_RHOLD = 4; //count for 16
//TODO: hold states
//TODO: redisgn this
reg [4:0] r_NEXT_STATE = 0;
reg [4:0] r_CURRENT_STATE = 0;
reg [9:0] r_ENTRY_CNT = 0;
reg [9:0] r_CURRENT_CHAR_ADDR= 0;
reg [3:0] r_PIX_CNT = 0;
wire [31:0] w_RETRIEVED_ENTRY = 0;
reg [15:0] r_END_OF_LINE;
reg [15:0] r_END_OF_SCREEN;
reg r_SRST = 0;
always@(posedge i_CLK)
begin
r_END_OF_LINE <= i_END_OF_LINE;
r_END_OF_SCREEN <= i_END_OF_SCREEN;
end
always@(*)
begin
	case(r_CURRENT_STATE)
		s_INIT:
		begin
			r_NEXT_STATE = s_READ;
		end
		s_READ:
		begin
			if(i_WRITE_REQUEST)
				r_NEXT_STATE = s_WRITE;
			else
			begin 
			if((r_CURRENT_CHAR_ADDR <= r_ENTRY_CNT)  && (o_CHAR_LINE_CNT != 15))
				r_NEXT_STATE = s_RHOLD;
			else
				r_NEXT_STATE = s_READ;
		    end
	   end
	s_WRITE:
	begin
		r_NEXT_STATE = s_WHOLD;
	end
	s_WHOLD:
	begin
		if(i_WRITE_REQUEST)
			r_NEXT_STATE = s_WHOLD;
		else
			r_NEXT_STATE = s_READ;
	end
	s_RHOLD:
	begin
		if(r_PIX_CNT < 16)
			r_NEXT_STATE = s_RHOLD;
		else
			r_NEXT_STATE = s_READ;
	end
	default:
	   r_NEXT_STATE = s_READ;

endcase
    end

    always@(posedge i_CLK)
    begin
	    if(!i_RESETN)
		    r_CURRENT_STATE <= s_INIT;
	    else
		    r_CURRENT_STATE <= r_NEXT_STATE;
    end
    //TODO: init BRAM to all zeroes
    //TODO: add coords here
    //TODO: Finish
    BRAM_SINGLE_MACRO #(
	    .BRAM_SIZE("36Kb"), // Target BRAM, "18Kb" or "36Kb" 
	    .DEVICE("7SERIES"), // Target Device: "7SERIES" 
	    .DO_REG(0), // Optional output register (0 or 1)
	    .INIT(32'h00000000), // Initial values on output port
	    .INIT_FILE ("NONE"),
	    .WRITE_WIDTH(32), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
	    .READ_WIDTH(32),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
	    .SRVAL(32'h00000000), // Set/Reset value for port output
	    .WRITE_MODE("WRITE_FIRST") // "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
    ) BRAM_SINGLE_MACRO_inst (
	    .DO(w_RETRIEVED_ENTRY),       // Output data, width defined by READ_WIDTH parameter
	    .ADDR(r_CURRENT_CHAR_ADDR),   // Input address, width defined by read/write port depth
	    .CLK(i_CLK),     // 1-bit input clock
	    .DI(i_DATA),       // Input data port, width defined by WRITE_WIDTH parameter
	    .EN(1),       // 1-bit input RAM enable
	    .REGCE(0), // 1-bit input output register enable
	    .RST(r_SRST),     // 1-bit input reset
	    .WE({4{i_WRITE_REQUEST}})        // Input write enable, width defined by write port depth
    );
    //need BRAM
    always@(posedge i_CLK)
    begin
	    if(r_CURRENT_STATE == s_INIT)
		    r_SRST = 1;
	    else
		    r_SRST = 0;  
    end
    always@(posedge i_CLK)
    begin
	    if(r_CURRENT_STATE == s_RHOLD)
	    begin
		    o_ASCII_VAL <= w_RETRIEVED_ENTRY[7:0];
		    o_FG_RED <= w_RETRIEVED_ENTRY[15:8];
		    o_FG_GREEN <= w_RETRIEVED_ENTRY[23:16];
		    o_FG_BLUE <= w_RETRIEVED_ENTRY[31:24];
		    r_PIX_CNT <= r_PIX_CNT + 1;
		    if((i_HCNT != r_END_OF_LINE)) //and line cnt != 16
		    begin
			    if((r_PIX_CNT == 15))
				    r_CURRENT_CHAR_ADDR <= r_CURRENT_CHAR_ADDR + 1;
			    else 
				    r_CURRENT_CHAR_ADDR <= r_CURRENT_CHAR_ADDR;
			    //fuck, need to reset access addr
		    end
		    else
			    r_CURRENT_CHAR_ADDR <= 0;
	    end
	    else
	    begin
		    o_ASCII_VAL <= 8'd0;
		    o_FG_RED <= 8'd0;
		    o_FG_GREEN <= 8'd0;
		    o_FG_BLUE <= 8'd0;
		    r_PIX_CNT <= 4'd0;
	    end
    end
    always@(posedge i_CLK)
    begin
        if(!i_RESETN)
            o_CHAR_LINE_CNT <= 4'd0;
        else 
        begin
            if(i_VCNT != r_END_OF_SCREEN -1) 
            begin
                if(i_HCNT == r_END_OF_LINE -1)
                    o_CHAR_LINE_CNT <= o_CHAR_LINE_CNT + 1;
                else
                    o_CHAR_LINE_CNT <= o_CHAR_LINE_CNT;
            end
        else
            o_CHAR_LINE_CNT <= 4'd0;
            
    end
    end
    always@(posedge i_CLK)
    begin
    if(!i_RESETN)
        r_ENTRY_CNT <= 10'd0;
    else
        begin
            if(r_CURRENT_STATE == s_WRITE)
                r_ENTRY_CNT <= r_ENTRY_CNT + 1;
            else
                r_ENTRY_CNT <= r_ENTRY_CNT;   
        end
    end
    endmodule
