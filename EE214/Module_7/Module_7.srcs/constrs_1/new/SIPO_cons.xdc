#LEDS
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports {o_LED[0]}]
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {o_LED[1]}]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {o_LED[2]}]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports {o_LED[3]}]

#RGB_LEDS
#set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { o_LED[4] }]; #IO_L3P_T0_DWS_PUDC_B_34 Schematic=LD4_R
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports {o_LED[4]}]
#set_property -dict { PACKAGE_PIN W20   IOSTANDARD LVCMOS33 } [get_ports { o_LED[6] }]; #IO_L16N_T2_34 Schematic=LD4_B

#set_property -dict { PACKAGE_PIN Y19   IOSTANDARD LVCMOS33 } [get_ports { o_LED[7] }]; #IO_L17N_T2_34  Schematic=LD5_R
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports {o_LED[5]}]
#set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports { o_LED[9] }]; #IO_L22N_T3_34 Schematic=LD5_B

#set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { o_LED[10] }]; #IO_L22P_T3_34  Schematic=LD6_R
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {o_LED[6]}]
#set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports { o_LED[12] }]; #IO_L17P_T2_34 Schematic=LD6_B

#set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { o_LED[13] }]; #IO_L8N_T1_34 Schematic=LD7_R
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports {o_LED[7]}]
#set_property -dict { PACKAGE_PIN Y17   IOSTANDARD LVCMOS33 } [get_ports { o_LED[15] }]; #IO_L7N_T1_34 Schematic=LD7_B

#Clock
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { i_CLK}]; #IO_L13P_T2_MRCC_35 Schematic=SYSCLK
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 4} [get_ports { i_CLK }];

#Switches
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {i_SDI}]

#Buttons
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {i_RST}]