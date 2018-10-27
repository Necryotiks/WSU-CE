#Clock
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports i_CLK]
create_clock -period 23.00 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports i_CLK]

##Buttons
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { i_LD_0 }]; #IO_L8P_T1_34 Schematic=BTN0
set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { i_LD_1 }]; #IO_L8P_T1_34 Schematic=BTN1
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { i_LDRG }]; #IO_L8P_T1_34 Schematic=BTN2


set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { o_LT }]; #IO_L8N_T1_34 Schematic=LD7_R
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports {o_EQ}] #Schematic=LD7_G
set_property -dict { PACKAGE_PIN Y17   IOSTANDARD LVCMOS33 } [get_ports { o_GT }]; #IO_L7N_T1_34 Schematic=LD7_B