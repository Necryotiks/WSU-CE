set_input_delay -clock [get_clocks clk_fpga_0] -min -add_delay 10.000 [get_ports {gpio_rtl_0_tri_io[*]}]
set_input_delay -clock [get_clocks clk_fpga_0] -max -add_delay 20.000 [get_ports {gpio_rtl_0_tri_io[*]}]
set_output_delay -clock [get_clocks clk_fpga_0] -min -add_delay 0.000 [get_ports {gpio_rtl_0_tri_io[*]}]
set_output_delay -clock [get_clocks clk_fpga_0] -max -add_delay 10.000 [get_ports {gpio_rtl_0_tri_io[*]}]

