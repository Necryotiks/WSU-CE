`ifndef VERILATOR
module testbench;
  reg [4095:0] vcdfile;
  reg clock;
`else
module testbench(input clock, output reg genclock);
  initial genclock = 1;
`endif
  reg genclock = 1;
  reg [31:0] cycle = 0;
  reg [15:0] PI_i_VERTICAL_SYNC_WIDTH;
  reg [0:0] PI_i_RSTN;
  reg [15:0] PI_i_END_OF_LINE;
  reg [15:0] PI_i_VERTICAL_FRONT_PORCH;
  reg [15:0] PI_i_END_OF_SCREEN;
  reg [15:0] PI_i_HORIZONTAL_FRONT_PORCH;
  reg [0:0] PI_i_CLK;
  reg [15:0] PI_i_HA_END;
  reg [15:0] PI_i_HORIZONTAL_SYNC_WIDTH;
  reg [15:0] PI_i_VA_END;
  VGA_controller UUT (
    .i_VERTICAL_SYNC_WIDTH(PI_i_VERTICAL_SYNC_WIDTH),
    .i_RSTN(PI_i_RSTN),
    .i_END_OF_LINE(PI_i_END_OF_LINE),
    .i_VERTICAL_FRONT_PORCH(PI_i_VERTICAL_FRONT_PORCH),
    .i_END_OF_SCREEN(PI_i_END_OF_SCREEN),
    .i_HORIZONTAL_FRONT_PORCH(PI_i_HORIZONTAL_FRONT_PORCH),
    .i_CLK(PI_i_CLK),
    .i_HA_END(PI_i_HA_END),
    .i_HORIZONTAL_SYNC_WIDTH(PI_i_HORIZONTAL_SYNC_WIDTH),
    .i_VA_END(PI_i_VA_END)
  );
`ifndef VERILATOR
  initial begin
    if ($value$plusargs("vcd=%s", vcdfile)) begin
      $dumpfile(vcdfile);
      $dumpvars(0, testbench);
    end
    #5 clock = 0;
    while (genclock) begin
      #5 clock = 0;
      #5 clock = 1;
    end
  end
`endif
  initial begin
`ifndef VERILATOR
    #1;
`endif
    // UUT.$and$VGA_controller.v:161$98_Y = 1'b0;
    // UUT.$formal$VGA_controller.v:164$13_CHECK = 1'b0;
    // UUT.$formal$VGA_controller.v:164$13_EN = 1'b0;
    // UUT.$formal$VGA_controller.v:166$14_CHECK = 1'b0;
    // UUT.$formal$VGA_controller.v:166$14_EN = 1'b0;
    // UUT.$formal$VGA_controller.v:168$15_CHECK = 1'b0;
    // UUT.$formal$VGA_controller.v:168$15_EN = 1'b0;
    UUT.r_HCNT = 16'b0000000000000000;
    UUT.r_HSYNC = 1'b0;
    UUT.r_VCNT = 16'b0000000000000000;
    UUT.r_VDE = 1'b0;
    UUT.r_VSYNC = 1'b0;
    UUT.r_X_COORD = 16'b0000000000000000;
    UUT.r_Y_COORD = 16'b0000000000000000;

    // state 0
    PI_i_VERTICAL_SYNC_WIDTH = 16'b0000000000000010;
    PI_i_RSTN = 1'b1;
    PI_i_END_OF_LINE = 16'b0000001100100000;
    PI_i_VERTICAL_FRONT_PORCH = 16'b0000000000001010;
    PI_i_END_OF_SCREEN = 16'b0000001000001101;
    PI_i_HORIZONTAL_FRONT_PORCH = 16'b0000000000010000;
    PI_i_CLK = 1'b1;
    PI_i_HA_END = 16'b0000001010000000;
    PI_i_HORIZONTAL_SYNC_WIDTH = 16'b0000000001100000;
    PI_i_VA_END = 16'b0000000111100000;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_i_VERTICAL_SYNC_WIDTH <= 16'b0000000000000010;
      PI_i_RSTN <= 1'b1;
      PI_i_END_OF_LINE <= 16'b0000001100100000;
      PI_i_VERTICAL_FRONT_PORCH <= 16'b0000000000001010;
      PI_i_END_OF_SCREEN <= 16'b0000001000001101;
      PI_i_HORIZONTAL_FRONT_PORCH <= 16'b0000000000010000;
      PI_i_CLK <= 1'b0;
      PI_i_HA_END <= 16'b0000001010000000;
      PI_i_HORIZONTAL_SYNC_WIDTH <= 16'b0000000001100000;
      PI_i_VA_END <= 16'b0000000111100000;
    end

    genclock <= cycle < 1;
    cycle <= cycle + 1;
  end
endmodule
