# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: new/LED_cons.xdc

# Block Designs: bd/LED_IP/LED_IP.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==LED_IP || ORIG_REF_NAME==LED_IP} -quiet] -quiet

# IP: bd/LED_IP/ip/LED_IP_processing_system7_0_0/LED_IP_processing_system7_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==LED_IP_processing_system7_0_0 || ORIG_REF_NAME==LED_IP_processing_system7_0_0} -quiet] -quiet

# IP: bd/LED_IP/ip/LED_IP_LED_CONTROLLER_0_0/LED_IP_LED_CONTROLLER_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==LED_IP_LED_CONTROLLER_0_0 || ORIG_REF_NAME==LED_IP_LED_CONTROLLER_0_0} -quiet] -quiet

# IP: bd/LED_IP/ip/LED_IP_ps7_0_axi_periph_0/LED_IP_ps7_0_axi_periph_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==LED_IP_ps7_0_axi_periph_0 || ORIG_REF_NAME==LED_IP_ps7_0_axi_periph_0} -quiet] -quiet

# IP: bd/LED_IP/ip/LED_IP_rst_ps7_0_50M_0/LED_IP_rst_ps7_0_50M_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==LED_IP_rst_ps7_0_50M_0 || ORIG_REF_NAME==LED_IP_rst_ps7_0_50M_0} -quiet] -quiet

# IP: bd/LED_IP/ip/LED_IP_xbar_0/LED_IP_xbar_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==LED_IP_xbar_0 || ORIG_REF_NAME==LED_IP_xbar_0} -quiet] -quiet

# IP: bd/LED_IP/ip/LED_IP_RGB_CONTROLLER_0_0/LED_IP_RGB_CONTROLLER_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==LED_IP_RGB_CONTROLLER_0_0 || ORIG_REF_NAME==LED_IP_RGB_CONTROLLER_0_0} -quiet] -quiet

# IP: bd/LED_IP/ip/LED_IP_auto_pc_0/LED_IP_auto_pc_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==LED_IP_auto_pc_0 || ORIG_REF_NAME==LED_IP_auto_pc_0} -quiet] -quiet

# XDC: bd/LED_IP/ip/LED_IP_processing_system7_0_0/LED_IP_processing_system7_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==LED_IP_processing_system7_0_0 || ORIG_REF_NAME==LED_IP_processing_system7_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/LED_IP/ip/LED_IP_rst_ps7_0_50M_0/LED_IP_rst_ps7_0_50M_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==LED_IP_rst_ps7_0_50M_0 || ORIG_REF_NAME==LED_IP_rst_ps7_0_50M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/LED_IP/ip/LED_IP_rst_ps7_0_50M_0/LED_IP_rst_ps7_0_50M_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==LED_IP_rst_ps7_0_50M_0 || ORIG_REF_NAME==LED_IP_rst_ps7_0_50M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/LED_IP/ip/LED_IP_xbar_0/LED_IP_xbar_0_ooc.xdc

# XDC: bd/LED_IP/ip/LED_IP_auto_pc_0/LED_IP_auto_pc_0_ooc.xdc

# XDC: bd/LED_IP/LED_IP_ooc.xdc
