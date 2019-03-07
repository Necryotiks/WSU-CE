# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: new/AXI_DEBUG_BD_wrapper.xdc

# Block Designs: bd/AXI_DEBUG_BD/AXI_DEBUG_BD.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==AXI_DEBUG_BD || ORIG_REF_NAME==AXI_DEBUG_BD} -quiet] -quiet

# IP: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_processing_system7_0_0/AXI_DEBUG_BD_processing_system7_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==AXI_DEBUG_BD_processing_system7_0_0 || ORIG_REF_NAME==AXI_DEBUG_BD_processing_system7_0_0} -quiet] -quiet

# IP: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_LED_CONTROLLER_0_0/AXI_DEBUG_BD_LED_CONTROLLER_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==AXI_DEBUG_BD_LED_CONTROLLER_0_0 || ORIG_REF_NAME==AXI_DEBUG_BD_LED_CONTROLLER_0_0} -quiet] -quiet

# IP: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_ps7_0_axi_periph_0/AXI_DEBUG_BD_ps7_0_axi_periph_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==AXI_DEBUG_BD_ps7_0_axi_periph_0 || ORIG_REF_NAME==AXI_DEBUG_BD_ps7_0_axi_periph_0} -quiet] -quiet

# IP: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_rst_ps7_0_50M_0/AXI_DEBUG_BD_rst_ps7_0_50M_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==AXI_DEBUG_BD_rst_ps7_0_50M_0 || ORIG_REF_NAME==AXI_DEBUG_BD_rst_ps7_0_50M_0} -quiet] -quiet

# IP: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_system_ila_0_0/AXI_DEBUG_BD_system_ila_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==AXI_DEBUG_BD_system_ila_0_0 || ORIG_REF_NAME==AXI_DEBUG_BD_system_ila_0_0} -quiet] -quiet

# Block Designs: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_system_ila_0_0/bd_0/bd_dc43.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_dc43 || ORIG_REF_NAME==bd_dc43} -quiet] -quiet

# IP: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_system_ila_0_0/bd_0/ip/ip_0/bd_dc43_ila_lib_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_dc43_ila_lib_0 || ORIG_REF_NAME==bd_dc43_ila_lib_0} -quiet] -quiet

# IP: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_system_ila_0_0/bd_0/ip/ip_1/bd_dc43_g_inst_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_dc43_g_inst_0 || ORIG_REF_NAME==bd_dc43_g_inst_0} -quiet] -quiet

# IP: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_system_ila_0_0/bd_0/ip/ip_2/bd_dc43_slot_0_aw_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_dc43_slot_0_aw_0 || ORIG_REF_NAME==bd_dc43_slot_0_aw_0} -quiet] -quiet

# IP: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_system_ila_0_0/bd_0/ip/ip_3/bd_dc43_slot_0_w_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_dc43_slot_0_w_0 || ORIG_REF_NAME==bd_dc43_slot_0_w_0} -quiet] -quiet

# IP: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_system_ila_0_0/bd_0/ip/ip_4/bd_dc43_slot_0_b_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_dc43_slot_0_b_0 || ORIG_REF_NAME==bd_dc43_slot_0_b_0} -quiet] -quiet

# IP: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_system_ila_0_0/bd_0/ip/ip_5/bd_dc43_slot_0_ar_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_dc43_slot_0_ar_0 || ORIG_REF_NAME==bd_dc43_slot_0_ar_0} -quiet] -quiet

# IP: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_system_ila_0_0/bd_0/ip/ip_6/bd_dc43_slot_0_r_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_dc43_slot_0_r_0 || ORIG_REF_NAME==bd_dc43_slot_0_r_0} -quiet] -quiet

# IP: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_auto_pc_0/AXI_DEBUG_BD_auto_pc_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==AXI_DEBUG_BD_auto_pc_0 || ORIG_REF_NAME==AXI_DEBUG_BD_auto_pc_0} -quiet] -quiet

# XDC: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_processing_system7_0_0/AXI_DEBUG_BD_processing_system7_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==AXI_DEBUG_BD_processing_system7_0_0 || ORIG_REF_NAME==AXI_DEBUG_BD_processing_system7_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_rst_ps7_0_50M_0/AXI_DEBUG_BD_rst_ps7_0_50M_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==AXI_DEBUG_BD_rst_ps7_0_50M_0 || ORIG_REF_NAME==AXI_DEBUG_BD_rst_ps7_0_50M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_rst_ps7_0_50M_0/AXI_DEBUG_BD_rst_ps7_0_50M_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==AXI_DEBUG_BD_rst_ps7_0_50M_0 || ORIG_REF_NAME==AXI_DEBUG_BD_rst_ps7_0_50M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_dc43_ila_lib_0 || ORIG_REF_NAME==bd_dc43_ila_lib_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_dc43_ila_lib_0 || ORIG_REF_NAME==bd_dc43_ila_lib_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_system_ila_0_0/bd_0/ip/ip_0/bd_dc43_ila_lib_0_ooc.xdc

# XDC: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_system_ila_0_0/bd_0/bd_dc43_ooc.xdc

# XDC: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_system_ila_0_0/AXI_DEBUG_BD_system_ila_0_0_ooc.xdc

# XDC: bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_auto_pc_0/AXI_DEBUG_BD_auto_pc_0_ooc.xdc

# XDC: bd/AXI_DEBUG_BD/AXI_DEBUG_BD_ooc.xdc