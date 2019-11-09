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
    output wire o_HSYNC,
    output wire o_VSYNC,
    output wire o_VDE,
    input wire [15:0] i_END_OF_LINE,
    input wire [15:0] i_END_OF_SCREEN,
    input wire [15:0] i_HA_END,
    input wire [15:0] i_VA_END,
    input wire [15:0] i_HORIZONTAL_FRONT_PORCH,
    input wire [15:0] i_HORIZONTAL_BACK_PORCH,
    input wire [15:0] i_HORIZONTAL_SYNC_WIDTH,
    input wire [15:0] i_VERTICAL_FRONT_PORCH,
    input wire [15:0] i_VERTICAL_BACK_PORCH,
    input wire [15:0] i_VERTICAL_SYNC_WIDTH,
    output wire [15:0] o_X_COORD,
    output wire [15:0] o_Y_COORD
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
    reg r_HSYNC = 1'd0;
    reg r_VSYNC = 1'd0; 
    reg [15:0] r_HCNT = 16'd0;
    reg [15:0] r_VCNT = 16'd0;
    reg [15:0] r_X_COORD = 16'd0;
    reg [15:0] r_Y_COORD = 16'd0;
    reg r_VDE = 1'd0;
    
    assign w_CLK = i_CLK;
    assign o_HSYNC = r_HSYNC;
    assign o_VSYNC = r_VSYNC;
    assign o_VDE = r_VDE;
    assign o_X_COORD = r_X_COORD;
    assign o_Y_COORD = r_Y_COORD;
     
    //assign o_X_COORD = (r_HCNT >= v_HORIZONTAL_ACTIVE_START) ? (r_HCNT - v_HORIZONTAL_ACTIVE_START) : 0; 
   // assign o_Y_COORD = (r_VCNT >= v_VA_END) ? (v_VA_END - 1) : r_VCNT; 
    //https://timetoexplore.net/blog/arty-fpga-vga-verilog-01
    
    
    always@(posedge w_CLK)
    begin
        if((r_HCNT >= 0) && (r_HCNT < i_HA_END)) 
            begin
            r_X_COORD = r_HCNT;
            end
        else
            r_X_COORD = 16'd0;
    end
    
    always@(posedge w_CLK)
    begin
        if(r_VCNT >= i_VA_END)
            r_Y_COORD = i_VA_END - 1'b1;
        else
            r_Y_COORD = r_VCNT;
    end
    
    always@(posedge w_CLK) //PIXEL COUNT
    begin
        if(r_HCNT == i_END_OF_LINE - 1) begin
            r_HCNT = 16'd0;
            end
        else
            begin
            r_HCNT = r_HCNT + 1'b1;
            end
    end
    
    always@(posedge w_CLK) //LINE COUNT
        begin
            if(r_VCNT == i_END_OF_SCREEN - 1) begin
                r_VCNT = 16'd0;
                end
            else if (r_HCNT == i_END_OF_LINE - 1)
                begin
                r_VCNT = r_VCNT + 1'b1;
                end
           else
                begin
                r_VCNT = r_VCNT;
                end
        end
        
        always@(posedge w_CLK)
        begin
            if((r_HCNT > i_HA_END + i_HORIZONTAL_FRONT_PORCH) && (r_HCNT <= i_HA_END + i_HORIZONTAL_FRONT_PORCH + i_HORIZONTAL_SYNC_WIDTH))
                r_HSYNC = 1'b0;
            else
                r_HSYNC = 1'b1;
        end
        
        always@(posedge w_CLK)
        begin
            if((r_VCNT > i_VA_END + i_VERTICAL_FRONT_PORCH ) && (r_VCNT <= i_VA_END + i_VERTICAL_FRONT_PORCH + i_VERTICAL_SYNC_WIDTH))
                r_VSYNC = 1'b0;
            else
                r_VSYNC = 1'b1;
        end
        
        always@(posedge w_CLK)
        begin
            if((r_HCNT <= i_HA_END) && (r_VCNT <= i_VA_END))
                r_VDE = 1'b1;
            else
                r_VDE = 1'b0;
        end
endmodule
