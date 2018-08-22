#Clock
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports i_CLK]

#LEDS
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports {o_LED[0]}]
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {o_LED[1]}]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {o_LED[2]}]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports {o_LED[3]}]

#RGB_LEDS
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports {o_LED[4]}]
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports {o_LED[5]}]
set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports {o_LED[6]}]

set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {o_LED[7]}]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports {o_LED[8]}]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {o_LED[9]}]

set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {o_LED[10]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {o_LED[11]}]
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {o_LED[12]}]

set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports {o_LED[13]}]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports {o_LED[14]}]
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports {o_LED[15]}]

#Switches
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {i_SW[0]}]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports {i_SW[1]}]
set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports {i_SW[2]}]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports {i_SW[3]}]

create_clock -period 22.000 -name sys_clk_pin -waveform {0.000 11.000} -add [get_ports i_CLK]
set_input_delay -clock [get_clocks sys_clk_pin] -min -add_delay 5.000 [get_ports {i_SW[*]}]
set_input_delay -clock [get_clocks sys_clk_pin] -max -add_delay 10.000 [get_ports {i_SW[*]}]
set_output_delay -clock [get_clocks sys_clk_pin] -min -add_delay 5.000 [get_ports {o_LED[*]}]
set_output_delay -clock [get_clocks sys_clk_pin] -max -add_delay 10.000 [get_ports {o_LED[*]}]
set_property BEL DFF [get_cells {o_LED_reg[14]}]
set_property LOC SLICE_X42Y17 [get_cells {o_LED_reg[14]}]


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list i_CLK_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 2 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {i_SW_IBUF[0]} {o_LED_OBUF[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {o_LED_OBUF[0]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets i_CLK_IBUF_BUFG]
