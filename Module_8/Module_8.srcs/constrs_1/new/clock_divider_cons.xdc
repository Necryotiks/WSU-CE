#Clock
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports i_CLK]

#LEDS
#set_property -dict { PACKAGE_PIN N20   IOSTANDARD LVCMOS33 } [get_ports { o_LED }]; #IO_L14P_T2_SRCC_34 Schematic=LD0
#LEDS
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports {o_LED[0]}]
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {o_LED[1]}]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {o_LED[2]}]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports {o_LED[3]}]
#Buttons
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports i_RST]

create_clock -period 23.00 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports i_CLK]
create_generated_clock -name c28/CLK -source [get_ports i_CLK] -divide_by 1 [get_pins {c28/o_Q_reg[27]/Q}]
set_input_delay -clock [get_clocks sys_clk_pin] -min -add_delay 10.000 [get_ports i_RST]
set_input_delay -clock [get_clocks sys_clk_pin] -max -add_delay 20.000 [get_ports i_RST]
set_output_delay -clock [get_clocks sys_clk_pin] -min -add_delay 0.000 [get_ports {o_LED[*]}]
set_output_delay -clock [get_clocks sys_clk_pin] -max -add_delay 10.000 [get_ports {o_LED[*]}]
