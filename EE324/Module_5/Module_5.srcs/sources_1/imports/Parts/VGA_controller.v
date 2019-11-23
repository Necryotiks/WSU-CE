`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2018 10:44:21 PM
// Design Name: 
// Module Name: VGA_controller
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


module VGA_controller(
    input wire i_CLK,
    input wire i_RESETN,
    input wire [15:0] i_END_OF_LINE,
    input wire [15:0] i_END_OF_SCREEN,
    input wire [15:0] i_HA_END,
    input wire [15:0] i_VA_END,
    input wire [15:0] i_HORIZONTAL_FRONT_PORCH,

    input wire [15:0] i_HORIZONTAL_SYNC_WIDTH,
    input wire [15:0] i_VERTICAL_FRONT_PORCH,

    input wire [15:0] i_VERTICAL_SYNC_WIDTH,
    output reg o_HSYNC,
    output reg o_VSYNC,
    output reg o_VDE,
    output wire [15:0] o_X_COORD, //normalized coordinates
    output wire [15:0] o_Y_COORD,
    output reg [15:0] o_HCNT, //raw counter data
    output reg [15:0] o_VCNT
    );
    
    
    localparam v_END_OF_LINE = 800;
    localparam v_END_OF_SCREEN = 525;
    localparam v_HORIZONTAL_ACTIVE_START = 0;
    localparam v_VERTICAL_ACTIVE_START = 0;
    localparam v_HA_END = 640;
    localparam v_VA_END = 480;
    localparam v_HORIZONTAL_FRONT_PORCH = 16;
    localparam v_HORIZONTAL_BACK_PORCH = 48;
    localparam v_HORIZONTAL_SYNC_WIDTH = 96;
    localparam v_VERTICAL_FRONT_PORCH = 10;
    localparam v_VERTICAL_BACK_PORCH = 33;
    localparam v_VERTICAL_SYNC_WIDTH = 2;
    wire w_CLK;


    reg [15:0] r_X_COORD = 16'd0;
    reg [15:0] r_Y_COORD = 16'd0;
    reg [15:0] r_HCNT;
    reg [15:0] r_VCNT;
    reg r_VDE = 1'd1;
    
    //assign w_CLK = i_CLK;
    //assign o_HSYNC = r_HSYNC;
    //assign o_VSYNC = r_VSYNC;
    //assign o_VDE = r_VDE;
    assign o_X_COORD = r_X_COORD;
    assign o_Y_COORD = r_Y_COORD;
     
    //assign o_X_COORD = (r_HCNT >= v_HORIZONTAL_ACTIVE_START) ? (r_HCNT - v_HORIZONTAL_ACTIVE_START) : 0; 
   // assign o_Y_COORD = (r_VCNT >= v_VA_END) ? (v_VA_END - 1) : r_VCNT; 
    //https://timetoexplore.net/blog/arty-fpga-vga-verilog-01
    

    
    always@(posedge i_CLK)
    begin
        if(r_HCNT < v_HA_END)
            begin
            r_X_COORD <= r_HCNT;
            end
        else
            r_X_COORD <= 16'd0;
    end
    
    always@(posedge i_CLK)
    begin
        if(o_VCNT >= v_VA_END)
            r_Y_COORD <= v_VA_END - 1'b1;
        else
            r_Y_COORD <= o_VCNT;
    end
    
    always@(posedge i_CLK) //PIXEL COUNT
    begin
        if(!i_RESETN || o_HCNT == v_END_OF_LINE - 1) begin
            o_HCNT <= 16'd0;
            end
        else
            begin
            o_HCNT <= o_HCNT + 1'b1;
            end
    end
    
    always@(posedge i_CLK) //LINE COUNT
        begin
            if(!i_RESETN || o_VCNT == v_END_OF_SCREEN - 1) begin
                o_VCNT <= 16'd0;
                end
            else if (o_HCNT == i_END_OF_LINE - 1)
                begin
                o_VCNT <= o_VCNT + 1'b1;
                end
           else
                begin
                o_VCNT <= o_VCNT;
                end
        end
        
        always@(posedge i_CLK)
        begin
            if((!i_RESETN) || (o_HCNT > v_HA_END + v_HORIZONTAL_FRONT_PORCH) && (r_HCNT <= v_HA_END + v_HORIZONTAL_FRONT_PORCH + v_HORIZONTAL_SYNC_WIDTH))
                o_HSYNC <= 1'b0;
            else
                o_HSYNC <= 1'b1;
        end
        
        always@(posedge i_CLK)
        begin
            if((!i_RESETN) || (o_VCNT > v_VA_END + v_VERTICAL_FRONT_PORCH ) && (o_VCNT <= v_VA_END + v_VERTICAL_FRONT_PORCH + v_VERTICAL_SYNC_WIDTH))
                o_VSYNC <= 1'b0;
            else
                o_VSYNC <= 1'b1;
        end
        
        always@(posedge i_CLK)
        begin
            if((o_HCNT <= v_HA_END) && (o_VCNT <= v_VA_END))
                o_VDE <= 1'b1;
            else
                o_VDE <= 1'b0;
        end
`ifdef FORMAL
reg r_past_valid = 0;
initial begin
	assume(!i_RESETN);
end
always@(posedge w_CLK)
begin
	assume(w_CLK != $past(w_CLK));
	assume(i_END_OF_LINE == 800);
	assume(i_END_OF_SCREEN == 525);
	assume(i_HA_END == 640);
	assume(i_VA_END == 480);
	assume(i_HORIZONTAL_FRONT_PORCH == 16);
	assume(i_HORIZONTAL_SYNC_WIDTH == 96);
	assume(i_VERTICAL_FRONT_PORCH == 10);
	assume(i_VERTICAL_SYNC_WIDTH == 2);
	assume( r_HCNT == 0);
	assume( r_VCNT == 0);
	r_past_valid = 1;
	if($rose(w_CLK) && r_past_valid)
	begin
		if(r_HCNT != i_END_OF_LINE && r_HCNT >= 1)
		begin
			HORZ_COUNTER:assert(r_HCNT == $past(r_HCNT) + 1);
		end
		else if($past(r_HCNT) == i_END_OF_LINE)
		begin
			HORZ_COUNTER_RST:assert(r_HCNT == 0);
		end
		if(r_VCNT != i_END_OF_SCREEN && r_VCNT >= 1)
		begin
			VERT_COUNTER:assert(r_VCNT == $past(r_VCNT) + 1);
		end
		else if($past(r_VCNT) == i_END_OF_SCREEN)
		begin
			VERT_COUNTER_RST:assert(r_VCNT == 0);
		end

		if((r_HCNT <= i_HA_END) && (r_VCNT <= i_VA_END))
			VDE:assert(r_VDE);
		if((r_HCNT >= (i_HA_END + i_HORIZONTAL_FRONT_PORCH)) && (r_HCNT <= (i_HA_END + i_HORIZONTAL_FRONT_PORCH + i_HORIZONTAL_SYNC_WIDTH)))
			HSYNC:assert(!o_HSYNC);
		if((r_VCNT >= (i_VA_END + i_VERTICAL_FRONT_PORCH)) && (r_VCNT <= (i_VA_END + i_VERTICAL_FRONT_PORCH + i_VERTICAL_SYNC_WIDTH)))
			VSYNC:assert(!o_VSYNC);
	end
	else
	begin
	end
end

`endif
endmodule
