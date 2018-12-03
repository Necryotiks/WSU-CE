set_property SRC_FILE_INFO {cfile:c:/Users/Sergaljerk/WSU-CPTE/Module_13/Module_13.srcs/sources_1/bd/HDMI_CTRL/ip/HDMI_CTRL_clk_wiz_0/HDMI_CTRL_clk_wiz_0.xdc rfile:../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ip/HDMI_CTRL_clk_wiz_0/HDMI_CTRL_clk_wiz_0.xdc id:1 order:EARLY scoped_inst:HDMI_CTRL_i/clk_wiz/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/Sergaljerk/WSU-CPTE/Module_13/Module_13.srcs/constrs_1/new/hdmi_cons.xdc rfile:../../../Module_13.srcs/constrs_1/new/hdmi_cons.xdc id:2} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
set_property src_info {type:XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports hdmi_clk_n]; #IO_L12N_T1_MRCC_34 Sch=HDMI_TX_CLK_N
set_property src_info {type:XDC file:2 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports hdmi_clk_p]; #IO_L12P_T1_MRCC_34 Sch=HDMI_TX_CLK_P
set_property src_info {type:XDC file:2 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V18   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_n[0]]; #IO_L21N_T3_DQS_34 Sch=HDMI_TX0_N
set_property src_info {type:XDC file:2 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_p[0]]; #IO_L21P_T3_DQS_34 Sch=HDMI_TX0_P
set_property src_info {type:XDC file:2 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_n[1]]; #IO_L23N_T3_34 Sch=HDMI_TX1_N
set_property src_info {type:XDC file:2 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_p[1]]; #IO_L23P_T3_34 Sch=HDMI_TX1_P
set_property src_info {type:XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P19   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_n[2]]; #IO_L13N_T2_MRCC_34 Sch=HDMI_TX2_N
set_property src_info {type:XDC file:2 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_p[2]]; #IO_L13P_T2_MRCC_34 Sch=HDMI_TX2_P
set_property src_info {type:XDC file:2 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports hdmi_cec]; #IO_L9N_T1_DQS_34 Sch=HDMI_TX_CEC
set_property src_info {type:XDC file:2 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports hdmi_hpd]; #IO_L24N_T3_34 Sch=HDMI_TX_HPD
set_property src_info {type:XDC file:2 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F17   IOSTANDARD LVCMOS33 } [get_ports hdmi_out_en]; #IO_L6N_T0_VREF_35 Sch=HDMI_OUT_EN
set_property src_info {type:XDC file:2 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports hdmi_scl]; #IO_L20P_T3_34 Sch=HDMI_TX_SCL
set_property src_info {type:XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports hdmi_sda]; #IO_L20N_T3_34 Sch=HDMI_TX_SDA
set_property src_info {type:XDC file:2 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports i_CLK]
set_property src_info {type:XDC file:2 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { i_RST }]; #IO_L8P_T1_34 Schematic=BTN0
