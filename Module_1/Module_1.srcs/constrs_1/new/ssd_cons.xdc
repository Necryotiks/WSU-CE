#SevenSegmentDisplay
#anodes
set_property -dict {PACKAGE_PIN K19 IOSTANDARD LVCMOS33} [get_ports {o_ANODE[0]}]
set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {o_ANODE[1]}]
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports {o_ANODE[2]}]
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports {o_ANODE[3]}]

#cathodes
set_property -dict {PACKAGE_PIN K14 IOSTANDARD LVCMOS33} [get_ports {o_CATHODE[0]}]
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports {o_CATHODE[1]}]
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports {o_CATHODE[2]}]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {o_CATHODE[3]}]
set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports {o_CATHODE[4]}]
set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS33} [get_ports {o_CATHODE[5]}]
set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS33} [get_ports {o_CATHODE[6]}]
#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { dp }]; #IO_L12N_T1_MRCC_35 Schematic=SSEG_DP

#Buttons
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {i_BTN[0]}]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {i_BTN[1]}]
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports {i_BTN[2]}]
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports {i_BTN[3]}]

create_clock -period 30.000 -name virtual_clock -waveform {0.000 15.000} -add
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 5.000 [get_ports {i_BTN[0]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 10.000 [get_ports {i_BTN[0]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 5.000 [get_ports {o_ANODE[0]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 10.000 [get_ports {o_ANODE[0]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 5.000 [get_ports {o_ANODE[1]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 10.000 [get_ports {o_ANODE[1]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 5.000 [get_ports {o_ANODE[2]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 10.000 [get_ports {o_ANODE[2]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 5.000 [get_ports {o_ANODE[3]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 10.000 [get_ports {o_ANODE[3]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 5.000 [get_ports {i_BTN[1]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 10.000 [get_ports {i_BTN[1]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 5.000 [get_ports {i_BTN[2]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 10.000 [get_ports {i_BTN[2]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 5.000 [get_ports {i_BTN[3]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 10.000 [get_ports {i_BTN[3]}]
