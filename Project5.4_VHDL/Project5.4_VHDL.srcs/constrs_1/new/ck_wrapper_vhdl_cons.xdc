#Clock
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { CLK }]; #IO_L13P_T2_MRCC_35 Schematic=SYSCLK
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 4} [get_ports { CLK }];

#LEDS
set_property -dict { PACKAGE_PIN N20   IOSTANDARD LVCMOS33 } [get_ports { LED[0] }]; #IO_L14P_T2_SRCC_34 Schematic=LD0
set_property -dict { PACKAGE_PIN P20   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]; #IO_L14N_T2_SRCC_34 Schematic=LD1
set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { LED[2] }]; #IO_0_34 Schematic=LD2
set_property -dict { PACKAGE_PIN T20   IOSTANDARD LVCMOS33 } [get_ports { LED[3] }]; #IO_L15P_T2_DQS_34 Schematic=LD3
#RGB_LEDS
set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { LED[4] }]; #IO_L3P_T0_DWS_PUDC_B_34 Schematic=LD4_R
set_property -dict { PACKAGE_PIN T19   IOSTANDARD LVCMOS33 } [get_ports { LED[5] }]; #IO_25_34 Schematic=LD4_G
set_property -dict { PACKAGE_PIN W20   IOSTANDARD LVCMOS33 } [get_ports { LED[6] }]; #IO_L16N_T2_34 Schematic=LD4_B

set_property -dict { PACKAGE_PIN Y19   IOSTANDARD LVCMOS33 } [get_ports { LED[7] }]; #IO_L17N_T2_34  Schematic=LD5_R
set_property -dict { PACKAGE_PIN V20   IOSTANDARD LVCMOS33 } [get_ports { LED[8] }]; #IO_L16P_T2_34 Schematic=LD5_G
set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports { LED[9] }]; #IO_L22N_T3_34 Schematic=LD5_B

set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { LED[10] }]; #IO_L22P_T3_34  Schematic=LD6_R
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { LED[11] }]; #IO_L18N_T2_34 Schematic=LD6_G
set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports { LED[12] }]; #IO_L17P_T2_34 Schematic=LD6_B

set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { LED[13] }]; #IO_L8N_T1_34 Schematic=LD7_R
set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS33 } [get_ports { LED[14] }]; #IO_L7P_T1_34 Schematic=LD7_G
set_property -dict { PACKAGE_PIN Y17   IOSTANDARD LVCMOS33 } [get_ports { LED[15] }]; #IO_L7N_T1_34 Schematic=LD7_B
#SWitches
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { SW[0] }]; #IO_L19N_T3_VREF_34 Schematic=SW0
set_property -dict { PACKAGE_PIN U20   IOSTANDARD LVCMOS33 } [get_ports { SW[1] }]; #IO_L15N_T2_DQS_34 Schematic=SW1
set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { FUN_SW}]; #IO_L23N_T3_35 Schematic=SW7
#Buttons
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { RST }]; #IO_L8P_T1_34 Schematic=BTN0

