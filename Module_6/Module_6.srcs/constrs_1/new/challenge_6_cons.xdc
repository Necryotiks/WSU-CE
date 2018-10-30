#Clock
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports i_CLK]

#LEDS
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports {o_LED[0]}]
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {o_LED[1]}]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {o_LED[2]}]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports {o_LED[3]}]

#RGB_LEDS
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports {o_LED[4]}]
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports {o_LED[5]}]
set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports {o_LED[6]}]

set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {o_LED[7]}]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports {o_LED[8]}]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {o_LED[9]}]

set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {o_LED[10]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {o_LED[11]}]
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {o_LED[12]}]

set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports {o_LED[13]}]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports {o_LED[14]}]
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports {o_LED[15]}]

#Switches
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {i_SW[0]}]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports {i_SW[1]}]
set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports {i_SW[2]}]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports {i_SW[3]}]

create_clock -period 22.000 -name sys_clk_pin -waveform {0.000 11.000} -add [get_ports i_CLK]
set_input_delay -clock [get_clocks sys_clk_pin] -min -add_delay 5.000 [get_ports {i_SW[*]}]
set_input_delay -clock [get_clocks sys_clk_pin] -max -add_delay 10.000 [get_ports {i_SW[*]}]
set_output_delay -clock [get_clocks sys_clk_pin] -min -add_delay 5.000 [get_ports {o_LED[*]}]
set_output_delay -clock [get_clocks sys_clk_pin] -max -add_delay 10.000 [get_ports {o_LED[*]}]
set_property BEL DFF [get_cells {o_LED_reg[14]}]
set_property LOC SLICE_X42Y17 [get_cells {o_LED_reg[14]}]

