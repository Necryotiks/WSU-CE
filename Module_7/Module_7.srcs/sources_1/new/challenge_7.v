`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2018 05:22:22 PM
// Design Name: 
// Module Name: challenge_7
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


module challenge_7(
    input i_CLK,
    input [7:0] i_SW,
    input [3:0] i_BTN,
    output [7:0] o_LED
    );
    //Source: http://verilog-code.blogspot.com/2013/09/barrel-shifter-design-using-21-mux.html
    wire [7:0] w_B_SHIFT_IN;
    wire [7:0] w_B_SHIFT_INTERCONNECT_1;
    wire [7:0] w_B_SHIFT_INTERCONNECT_2;
    wire [7:0] w_B_SHIFT_INTERCONNECT_3;
    PIPO in_reg(
    .i_CLK(i_CLK),
    .i_BTN(i_BTN[0]),
    .i_SW(i_SW),
    .o_LED(w_B_SHIFT_IN)
    );
    
    mux_2_1 mux_0(
    .i_CLK(i_CLK),
    .i_IN_1(w_B_SHIFT_IN[7]),
    .i_IN_0(w_B_SHIFT_IN[0]),
    .i_SEL(i_BTN[1]),
    .o_Y(w_B_SHIFT_INTERCONNECT_1[0])
    );
    genvar i;
    generate
    begin
        for(i = 1; i < 8; i = i + 1)
            begin:muxshift_1
             mux_2_1 mux_x(
             .i_CLK(i_CLK),
             .i_IN_1(w_B_SHIFT_IN[i-1]),
             .i_IN_0(w_B_SHIFT_IN[i]),
             .i_SEL(i_BTN[1]),
              .o_Y(w_B_SHIFT_INTERCONNECT_1[i])
             );
            end
    end
    endgenerate
    
      mux_2_1 mux_8(
      .i_CLK(i_CLK),
      .i_IN_1(w_B_SHIFT_INTERCONNECT_1[6]),
      .i_IN_0(w_B_SHIFT_INTERCONNECT_1[0]),
      .i_SEL(i_BTN[2]),
      .o_Y(w_B_SHIFT_INTERCONNECT_2[0])
      );
      mux_2_1 mux_9(
      .i_CLK(i_CLK),
      .i_IN_1(w_B_SHIFT_INTERCONNECT_1[7]),
      .i_IN_0(w_B_SHIFT_INTERCONNECT_1[1]),
      .i_SEL(i_BTN[2]),
      .o_Y(w_B_SHIFT_INTERCONNECT_2[1])
      );
      generate
          begin
              for(i = 2; i < 8; i = i + 1)
                  begin:muxshift_2
                   mux_2_1 mux_x(
                   .i_CLK(i_CLK),
                   .i_IN_1(w_B_SHIFT_INTERCONNECT_1[i-2]),
                   .i_IN_0(w_B_SHIFT_INTERCONNECT_1[i]),
                   .i_SEL(i_BTN[2]),
                    .o_Y(w_B_SHIFT_INTERCONNECT_2[i])
                   );
                  end
          end
          endgenerate
          generate
          begin
              for(i = 0; i < 4; i = i + 1)
                  begin:muxshift_3_low
                   mux_2_1 mux_x(
                   .i_CLK(i_CLK),
                   .i_IN_1(w_B_SHIFT_INTERCONNECT_2[i+4]),
                   .i_IN_0(w_B_SHIFT_INTERCONNECT_2[i]),
                   .i_SEL(i_BTN[3]),
                    .o_Y(w_B_SHIFT_INTERCONNECT_3[i])
                   );
                  end
          end
          endgenerate
          generate
          begin
              for(i = 4; i < 8; i = i + 1)
                  begin:muxshift_3_high
                   mux_2_1 mux_x(
                   .i_CLK(i_CLK),
                   .i_IN_1(w_B_SHIFT_INTERCONNECT_2[i-4]),
                   .i_IN_0(w_B_SHIFT_INTERCONNECT_2[i]),
                   .i_SEL(i_BTN[3]),
                    .o_Y(w_B_SHIFT_INTERCONNECT_3[i])
                   );
                  end
          end
          endgenerate
    assign o_LED = w_B_SHIFT_INTERCONNECT_3;
endmodule
