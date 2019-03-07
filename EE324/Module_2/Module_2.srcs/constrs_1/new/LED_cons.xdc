##LEDS
#IO_L14P_T2_SRCC_34 Schematic name=LD0
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports {o_LED[0]}]
#IO_L14N_T2_SRCC_34 Schematic name=LD1
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {o_LED[1]}]
#IO_0_34 Schematic name=LD2
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {o_LED[2]}]
#IO_L15P_T2_DQS_34 Schematic name=LD3
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports {o_LED[3]}]
#RGB_LEDS
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports {o_RGB[0]}]
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports {o_RGB[1]}]
set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports {o_RGB[2]}]

set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {o_RGB[3]}]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports {o_RGB[4]}]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {o_RGB[5]}]

set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {o_RGB[6]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {o_RGB[7]}]
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {o_RGB[8]}]

set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports {o_RGB[9]}]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports {o_RGB[10]}]
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports {o_RGB[11]}]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list LED_IP_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[0]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[1]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[2]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[3]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[4]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[5]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[6]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[7]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[8]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[9]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[10]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[11]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[12]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[13]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[14]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[15]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[16]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[17]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[18]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[19]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[20]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[21]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[22]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[23]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[24]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[25]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[26]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[27]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[28]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[29]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[30]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWADDR[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[0]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[1]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[2]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[3]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[4]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[5]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[6]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[7]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[8]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[9]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[10]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[11]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[12]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[13]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[14]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[15]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[16]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[17]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[18]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[19]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[20]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[21]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[22]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[23]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[24]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[25]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[26]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[27]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[28]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[29]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[30]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARADDR[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 4 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {LED_IP_i/ps7_0_axi_periph_M00_AXI_WSTRB[0]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WSTRB[1]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WSTRB[2]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WSTRB[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[0]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[1]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[2]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[3]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[4]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[5]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[6]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[7]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[8]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[9]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[10]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[11]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[12]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[13]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[14]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[15]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[16]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[17]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[18]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[19]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[20]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[21]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[22]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[23]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[24]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[25]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[26]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[27]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[28]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[29]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[30]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_WDATA[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 3 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARPROT[0]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARPROT[1]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_ARPROT[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 3 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWPROT[0]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWPROT[1]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_AWPROT[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 32 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[0]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[1]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[2]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[3]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[4]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[5]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[6]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[7]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[8]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[9]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[10]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[11]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[12]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[13]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[14]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[15]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[16]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[17]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[18]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[19]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[20]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[21]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[22]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[23]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[24]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[25]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[26]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[27]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[28]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[29]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[30]} {LED_IP_i/ps7_0_axi_periph_M00_AXI_RDATA[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list LED_IP_i/ps7_0_axi_periph_M00_AXI_ARREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list LED_IP_i/ps7_0_axi_periph_M00_AXI_ARVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list LED_IP_i/ps7_0_axi_periph_M00_AXI_AWREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list LED_IP_i/ps7_0_axi_periph_M00_AXI_AWVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list LED_IP_i/ps7_0_axi_periph_M00_AXI_BREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list LED_IP_i/ps7_0_axi_periph_M00_AXI_BVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list LED_IP_i/ps7_0_axi_periph_M00_AXI_RREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list LED_IP_i/ps7_0_axi_periph_M00_AXI_RVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list LED_IP_i/ps7_0_axi_periph_M00_AXI_WREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list LED_IP_i/ps7_0_axi_periph_M00_AXI_WVALID]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
