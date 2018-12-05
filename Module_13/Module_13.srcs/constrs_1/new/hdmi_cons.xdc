#VGA
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {o_RED[0]}]
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports {o_RED[1]}]
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {o_RED[2]}]
set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports {o_RED[3]}]
set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports {o_GREEN[0]}]
set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports {o_GREEN[1]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {o_GREEN[2]}]
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports {o_GREEN[3]}]
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports {o_BLUE[0]}]
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports {o_BLUE[1]}]
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {o_BLUE[2]}]
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {o_BLUE[3]}]
set_property -dict {PACKAGE_PIN T12 IOSTANDARD LVCMOS33} [get_ports o_HSYNC]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports o_VSYNC]

#Clock
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports i_CLK]

##Buttons
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports i_RST]

#set_property -dict { PACKAGE_PIN V18   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_0[0]]; #IO_L21N_T3_DQS_34 Sch=HDMI_TX0_N
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_0[1]]; #IO_L21P_T3_DQS_34 Sch=HDMI_TX0_P
#set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_0[2]]; #IO_L23N_T3_34 Sch=HDMI_TX1_N
#set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_0[3]]; #IO_L23P_T3_34 Sch=HDMI_TX1_P
#set_property -dict { PACKAGE_PIN P19   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_0[4]]; #IO_L13N_T2_MRCC_34 Sch=HDMI_TX2_N
#set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_0[5]]; #IO_L13P_T2_MRCC_34 Sch=HDMI_TX2_P


##HDMI Signals
#set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_0]; #IO_L12N_T1_MRCC_34 Sch=HDMI_TX_CLK_N
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports TDMS_CLK_P]; #IO_L12P_T1_MRCC_34 Sch=HDMI_TX_CLK_P

set_property IOSTANDARD TMDS_33 [get_ports hdmi_tx_0_tmds_clk_p]

create_clock -period 23.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports i_CLK]
set_property PACKAGE_PIN N18 [get_ports {hdmi_tx_0_tmds_data_p[2]}]
set_property PACKAGE_PIN N17 [get_ports {hdmi_tx_0_tmds_data_p[1]}]
set_property PACKAGE_PIN V17 [get_ports {hdmi_tx_0_tmds_data_p[0]}]
set_property PACKAGE_PIN U18 [get_ports hdmi_tx_0_tmds_clk_p]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_tx_0_tmds_data_p[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_tx_0_tmds_data_p[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_tx_0_tmds_data_p[0]}]
