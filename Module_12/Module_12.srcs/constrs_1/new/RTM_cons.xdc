set_property PACKAGE_PIN K14 [get_ports {o_Cathodes_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Cathodes_0[0]}]
set_property PACKAGE_PIN H15 [get_ports {o_Cathodes_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Cathodes_0[1]}]
set_property PACKAGE_PIN J18 [get_ports {o_Cathodes_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Cathodes_0[2]}]
set_property PACKAGE_PIN J15 [get_ports {o_Cathodes_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Cathodes_0[3]}]
set_property PACKAGE_PIN M17 [get_ports {o_Cathodes_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Cathodes_0[4]}]
set_property PACKAGE_PIN J16 [get_ports {o_Cathodes_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Cathodes_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Cathodes_0[6]}]
set_property PACKAGE_PIN K19 [get_ports {o_Anodes_0[0]}]
set_property PACKAGE_PIN H17 [get_ports {o_Anodes_0[1]}]
set_property PACKAGE_PIN M18 [get_ports {o_Anodes_0[2]}]
set_property PACKAGE_PIN L16 [get_ports {o_Anodes_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Anodes_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Anodes_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Anodes_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Anodes_0[0]}]
set_property PACKAGE_PIN M14 [get_ports i_RST]
set_property IOSTANDARD LVCMOS33 [get_ports i_RST]
set_property IOSTANDARD LVCMOS33 [get_ports i_CLK]
set_property PACKAGE_PIN W14 [get_ports i_Start_0]
set_property PACKAGE_PIN W13 [get_ports i_React_0]
set_property IOSTANDARD LVCMOS33 [get_ports i_React_0]
set_property IOSTANDARD LVCMOS33 [get_ports i_Start_0]
set_property PACKAGE_PIN H18 [get_ports {o_Cathodes_0[6]}]
set_property PACKAGE_PIN H16 [get_ports i_CLK]

#create_generated_clock -name Reaction_Time_Averager_i/HZ_Counter_0/inst/o_Out -source [get_ports i_CLK] -divide_by 1 [get_pins Reaction_Time_Averager_i/HZ_Counter_0/inst/o_Out_reg/Q]

set_property PACKAGE_PIN Y14 [get_ports {o_Ready_0[0]}]
set_property PACKAGE_PIN Y17 [get_ports {o_Ready_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Ready_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Ready_0[0]}]

create_clock -period 25.000 -name i_CLK -waveform {0.000 12.500} [get_ports i_CLK]
set_input_delay -clock [get_clocks i_CLK] -min -add_delay 20.000 [get_ports i_RST]
set_input_delay -clock [get_clocks i_CLK] -max -add_delay 40.000 [get_ports i_RST]
set_input_delay -clock [get_clocks i_CLK] -clock_fall -min -add_delay 20.000 [get_ports i_React_0]
set_input_delay -clock [get_clocks i_CLK] -clock_fall -max -add_delay 30.000 [get_ports i_React_0]
set_input_delay -clock [get_clocks i_CLK] -min -add_delay 20.000 [get_ports i_React_0]
set_input_delay -clock [get_clocks i_CLK] -max -add_delay 30.000 [get_ports i_React_0]
set_output_delay -clock [get_clocks i_CLK] -min -add_delay 0.000 [get_ports {o_Anodes_0[*]}]
set_output_delay -clock [get_clocks i_CLK] -max -add_delay 10.000 [get_ports {o_Anodes_0[*]}]
set_output_delay -clock [get_clocks i_CLK] -min -add_delay 0.000 [get_ports {o_Cathodes_0[*]}]
set_output_delay -clock [get_clocks i_CLK] -max -add_delay 10.000 [get_ports {o_Cathodes_0[*]}]

set_property IOSTANDARD LVCMOS33 [get_ports {o_T_NUM_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_T_NUM_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_T_NUM_0[0]}]
set_property PACKAGE_PIN N20 [get_ports {o_T_NUM_0[0]}]
set_property PACKAGE_PIN P20 [get_ports {o_T_NUM_0[1]}]
set_property PACKAGE_PIN R19 [get_ports {o_T_NUM_0[2]}]
