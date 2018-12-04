#VGA
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { o_RED[0] }]; #IO_L10P_T1_34 Sch=VGA_R4_CON
set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports { o_RED[1] }]; #IO_L10N_T1_34 Sch=VGA_R5_CON
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { o_RED[2] }]; #IO_L18P_T2_34 Sch=VGA_R6_CON
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { o_RED[3] }]; #IO_L18N_T2_AD13N_35 Sch=VGA_R7_CON
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { o_GREEN[0] }]; #IO_L5N_T0_34 Sch=VGA_G4_CON
set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports { o_GREEN[1] }]; #IO_L3N_T0_DQS_34 Sch=VGA_G5_CON
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { o_GREEN[2] }]; #IO_L11P_T1_SRCC_34 Sch=VGA_G6_CON
set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports { o_GREEN[3] }]; #IO_L11N_T1_SRCC_34 Sch=VGA_G7_CON
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { o_BLUE[0] }]; #IO_L1P_T0_34 Sch=VGA_B4_CON
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { o_BLUE[1] }]; #IO_L5P_T0_34 Sch=VGA_B5_CON
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { o_BLUE[2] }]; #IO_L2N_T0_34 Sch=VGA_B6_CON
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { o_BLUE[3] }]; #IO_L4P_T0_34 Sch=VGA_B7_CON
set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { o_HSYNC }]; #IO_L2P_T0_34 Sch=VGA_HS
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { o_VSYNC }]; #IO_L1N_T0_34 Sch=VGA_VS

#Clock
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports i_CLK]
create_clock -period 23.00 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports i_CLK]

##Buttons
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { i_RST }]; #IO_L8P_T1_34 Schematic=BTN0

set_property -dict { PACKAGE_PIN V18   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_n[0]]; #IO_L21N_T3_DQS_34 Sch=HDMI_TX0_N
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_p[0]]; #IO_L21P_T3_DQS_34 Sch=HDMI_TX0_P
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_n[1]]; #IO_L23N_T3_34 Sch=HDMI_TX1_N
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_p[1]]; #IO_L23P_T3_34 Sch=HDMI_TX1_P
set_property -dict { PACKAGE_PIN P19   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_n[2]]; #IO_L13N_T2_MRCC_34 Sch=HDMI_TX2_N
set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_p[2]]; #IO_L13P_T2_MRCC_34 Sch=HDMI_TX2_P


#HDMI Signals
set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports hdmi_clk_n]; #IO_L12N_T1_MRCC_34 Sch=HDMI_TX_CLK_N
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports hdmi_clk_p]; #IO_L12P_T1_MRCC_34 Sch=HDMI_TX_CLK_P