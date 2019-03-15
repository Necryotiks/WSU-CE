
#Clock
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports i_CLK_100MHZ]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports i_CLK_100MHZ]


##HDMI Signals
#set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports TMDS_N]; #IO_L12N_T1_MRCC_34 Sch=HDMI_TX_CLK_N
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports TDMS_P]; #IO_L12P_T1_MRCC_34 Sch=HDMI_TX_CLK_P
#set_property -dict {PACKAGE_PIN V18 IOSTANDARD TMDS_33} [get_ports {TMDS_DATA_N[0]}]
#set_property -dict {PACKAGE_PIN V17 IOSTANDARD TMDS_33} [get_ports {TMDS_DATA_P[0]}]
#set_property -dict {PACKAGE_PIN P18 IOSTANDARD TMDS_33} [get_ports {TMDS_DATA_N[1]}]
#set_property -dict {PACKAGE_PIN N17 IOSTANDARD TMDS_33} [get_ports {TMDS_DATA_P[1]}]
#set_property -dict {PACKAGE_PIN P19 IOSTANDARD TMDS_33} [get_ports {TMDS_DATA_N[2]}]
#set_property -dict {PACKAGE_PIN N18 IOSTANDARD TMDS_33} [get_ports {TMDS_DATA_P[2]}]

#Switches
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {i_SEL[0]}]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports {i_SEL[1]}]

#Buttons
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports i_RST]


set_property PACKAGE_PIN U18 [get_ports hdmi_tx_0_tmds_clk_p]
set_property PACKAGE_PIN V17 [get_ports {hdmi_tx_0_tmds_data_p[0]}]
set_property PACKAGE_PIN N17 [get_ports {hdmi_tx_0_tmds_data_p[1]}]
set_property PACKAGE_PIN N18 [get_ports {hdmi_tx_0_tmds_data_p[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_tx_0_tmds_data_p[0]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_tx_0_tmds_data_p[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_tx_0_tmds_data_p[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_tx_0_tmds_clk_p}]