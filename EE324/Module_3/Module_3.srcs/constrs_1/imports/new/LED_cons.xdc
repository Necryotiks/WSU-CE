##LEDS
#IO_L14P_T2_SRCC_34 Schematic name=LD0
set_property -dict { PACKAGE_PIN N20   IOSTANDARD LVCMOS33 } [get_ports { o_LED[0] }]; 
#IO_L14N_T2_SRCC_34 Schematic name=LD1
set_property -dict { PACKAGE_PIN P20   IOSTANDARD LVCMOS33 } [get_ports { o_LED[1] }]; 
#IO_0_34 Schematic name=LD2
set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { o_LED[2] }]; 
#IO_L15P_T2_DQS_34 Schematic name=LD3
set_property -dict { PACKAGE_PIN T20   IOSTANDARD LVCMOS33 } [get_ports { o_LED[3] }]
#RGB_LEDS
set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { o_RGB[0] }]; #IO_L3P_T0_DWS_PUDC_B_34 Schematic=LD4_R
set_property -dict { PACKAGE_PIN T19   IOSTANDARD LVCMOS33 } [get_ports { o_RGB[1] }]; #IO_25_34 Schematic=LD4_G
set_property -dict { PACKAGE_PIN W20   IOSTANDARD LVCMOS33 } [get_ports { o_RGB[2] }]; #IO_L16N_T2_34 Schematic=LD4_B

set_property -dict { PACKAGE_PIN Y19   IOSTANDARD LVCMOS33 } [get_ports { o_RGB[3] }]; #IO_L17N_T2_34  Schematic=LD5_R
set_property -dict { PACKAGE_PIN V20   IOSTANDARD LVCMOS33 } [get_ports { o_RGB[4] }]; #IO_L16P_T2_34 Schematic=LD5_G
set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports { o_RGB[5] }]; #IO_L22N_T3_34 Schematic=LD5_B

set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { o_RGB[6] }]; #IO_L22P_T3_34  Schematic=LD6_R
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { o_RGB[7] }]; #IO_L18N_T2_34 Schematic=LD6_G
set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports { o_RGB[8] }]; #IO_L17P_T2_34 Schematic=LD6_B

set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { o_RGB[9] }]; #IO_L8N_T1_34 Schematic=LD7_R
set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS33 } [get_ports { o_RGB[10] }]; #IO_L7P_T1_34 Schematic=LD7_G
set_property -dict { PACKAGE_PIN Y17   IOSTANDARD LVCMOS33 } [get_ports { o_RGB[11] }]; #IO_L7N_T1_34 Schematic=LD7_B