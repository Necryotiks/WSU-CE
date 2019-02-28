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

create_clock -period 20.00 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports i_CLK]

