#Clock
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports i_CLK]
create_clock -period 23.00 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports i_CLK]

##Buttons
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { i_Sub }]; #IO_L8P_T1_34 Schematic=BTN0
set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { i_LD_0 }]; #IO_L8P_T1_34 Schematic=BTN0


#Switches
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { i_SW[0] }]; #IO_L19N_T3_VREF_34 Schematic=SW0
set_property -dict { PACKAGE_PIN U20   IOSTANDARD LVCMOS33 } [get_ports { i_SW[1] }]; #IO_L15N_T2_DQS_34 Schematic=SW1
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { i_SW[2] }]; #IO_L19P_T3_34 Schematic=SW2
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { i_SW[3] }]; #IO_L21N_T3_DQS_AD14N_35 Schematic=SW3
set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { i_SW[4] }]; #IO_L6N_T0_VREF_34 Schematic=SW4
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { i_SW[5] }]; #IO_L6P_T0_34 Schematic=SW5
set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { i_SW[6] }]; #IO_L22N_T3_AD7N_35 Schematic=SW6
set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { i_SW[7] }]; #IO_L23N_T3_35 Schematic=SW7


#RGB_LEDs
set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { o_Carry }]; #IO_L8N_T1_34 Schematic=LD7_R
#set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports {o_EQ}]; #Schematic=LD7_G
#set_property -dict { PACKAGE_PIN Y17   IOSTANDARD LVCMOS33 } [get_ports { o_GT }]; #IO_L7N_T1_34 Schematic=LD7_B

##SevenSegmentDisplay
#anodes
set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports { o_Anodes[0] }]; #IO_L10P_T1_AD11P_35 Schematic=SSEG_AN0
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { o_Anodes[1] }]; #IO_L13N_T2_MRCC_35 Schematic=SSEG_AN1
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { o_Anodes[2] }]; #IO_L8N_T1_AD10N_35 Schematic=SSEG_AN2
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { o_Anodes[3] }]; #IO_L11P_T1_SRCC_35 Schematic=SSEG_AN3

#cathodes
set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { o_Cathode[0] }]; #IO_L20P_T3_AD6P_35 Schematic=SSEG_CA
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { o_Cathode[1] }]; #IO_L19P_T3_35 Schematic=SSEG_CB
set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { o_Cathode[2] }]; #IO_L14P_T2_AD4P_SRCC_35 Schematic=SSEG_CC
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { o_Cathode[3] }]; #IO_25_35 Schematic=SSEG_CD
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { o_Cathode[4] }]; #IO_L8P_T1_AD10P_35 Schematic=SSEG_CE
set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { o_Cathode[5] }]; #IO_L24N_T3_AD15N_35 Schematic=SSEG_CF
set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { o_Cathode[6] }]; #IO_L8P_T1_AD10P_35 Schematic=SSEG_CG