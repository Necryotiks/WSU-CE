# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: new/Bounce_RTM_cons.xdc

# Block Designs: bd/Bounce_Timer/Bounce_Timer.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==Bounce_Timer || ORIG_REF_NAME==Bounce_Timer} -quiet] -quiet

# IP: bd/Bounce_Timer/ip/Bounce_Timer_ssd_dec_0_0/Bounce_Timer_ssd_dec_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==Bounce_Timer_ssd_dec_0_0 || ORIG_REF_NAME==Bounce_Timer_ssd_dec_0_0} -quiet] -quiet

# IP: bd/Bounce_Timer/ip/Bounce_Timer_ssd_mux_0_0/Bounce_Timer_ssd_mux_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==Bounce_Timer_ssd_mux_0_0 || ORIG_REF_NAME==Bounce_Timer_ssd_mux_0_0} -quiet] -quiet

# IP: bd/Bounce_Timer/ip/Bounce_Timer_HZ_Counter_0_0/Bounce_Timer_HZ_Counter_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==Bounce_Timer_HZ_Counter_0_0 || ORIG_REF_NAME==Bounce_Timer_HZ_Counter_0_0} -quiet] -quiet

# IP: bd/Bounce_Timer/ip/Bounce_Timer_Bounce_Counter_FSM_0_0/Bounce_Timer_Bounce_Counter_FSM_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==Bounce_Timer_Bounce_Counter_FSM_0_0 || ORIG_REF_NAME==Bounce_Timer_Bounce_Counter_FSM_0_0} -quiet] -quiet

# IP: bd/Bounce_Timer/ip/Bounce_Timer_BINARY_TO_BCD_0_0/Bounce_Timer_BINARY_TO_BCD_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==Bounce_Timer_BINARY_TO_BCD_0_0 || ORIG_REF_NAME==Bounce_Timer_BINARY_TO_BCD_0_0} -quiet] -quiet

# IP: bd/Bounce_Timer/ip/Bounce_Timer_xlslice_0_0/Bounce_Timer_xlslice_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==Bounce_Timer_xlslice_0_0 || ORIG_REF_NAME==Bounce_Timer_xlslice_0_0} -quiet] -quiet

# IP: bd/Bounce_Timer/ip/Bounce_Timer_xlslice_1_0/Bounce_Timer_xlslice_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==Bounce_Timer_xlslice_1_0 || ORIG_REF_NAME==Bounce_Timer_xlslice_1_0} -quiet] -quiet

# IP: bd/Bounce_Timer/ip/Bounce_Timer_xlslice_2_0/Bounce_Timer_xlslice_2_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==Bounce_Timer_xlslice_2_0 || ORIG_REF_NAME==Bounce_Timer_xlslice_2_0} -quiet] -quiet

# IP: bd/Bounce_Timer/ip/Bounce_Timer_xlslice_3_0/Bounce_Timer_xlslice_3_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==Bounce_Timer_xlslice_3_0 || ORIG_REF_NAME==Bounce_Timer_xlslice_3_0} -quiet] -quiet

# IP: bd/Bounce_Timer/ip/Bounce_Timer_rst_i_CLK_100M_0/Bounce_Timer_rst_i_CLK_100M_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==Bounce_Timer_rst_i_CLK_100M_0 || ORIG_REF_NAME==Bounce_Timer_rst_i_CLK_100M_0} -quiet] -quiet

# XDC: bd/Bounce_Timer/ip/Bounce_Timer_rst_i_CLK_100M_0/Bounce_Timer_rst_i_CLK_100M_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==Bounce_Timer_rst_i_CLK_100M_0 || ORIG_REF_NAME==Bounce_Timer_rst_i_CLK_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/Bounce_Timer/ip/Bounce_Timer_rst_i_CLK_100M_0/Bounce_Timer_rst_i_CLK_100M_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==Bounce_Timer_rst_i_CLK_100M_0 || ORIG_REF_NAME==Bounce_Timer_rst_i_CLK_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/Bounce_Timer/ip/Bounce_Timer_rst_i_CLK_100M_0/Bounce_Timer_rst_i_CLK_100M_0_ooc.xdc

# XDC: bd/Bounce_Timer/Bounce_Timer_ooc.xdc
