##LEDS
#IO_L14P_T2_SRCC_34 Schematic name=LD0
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports {o_LED_0[0]}]
#IO_L14N_T2_SRCC_34 Schematic name=LD1
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {o_LED_0[1]}]
#IO_0_34 Schematic name=LD2
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {o_LED_0[2]}]
#IO_L15P_T2_DQS_34 Schematic name=LD3
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports {o_LED_0[3]}]

##RGB_LEDS
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports {o_RGB_LED_0[0]}]
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports {o_RGB_LED_0[1]}]
set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports {o_RGB_LED_0[2]}]

set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {o_RGB_LED_0[3]}]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports {o_RGB_LED_0[4]}]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {o_RGB_LED_0[5]}]

set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {o_RGB_LED_0[6]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {o_RGB_LED_0[7]}]
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {o_RGB_LED_0[8]}]

set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports {o_RGB_LED_0[9]}]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports {o_RGB_LED_0[10]}]
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports {o_RGB_LED_0[11]}]



#Clock
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { i_CLK }]; #IO_L13P_T2_MRCC_35 Schematic=SYSCLK
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 4} [get_ports { i_CLK }];
