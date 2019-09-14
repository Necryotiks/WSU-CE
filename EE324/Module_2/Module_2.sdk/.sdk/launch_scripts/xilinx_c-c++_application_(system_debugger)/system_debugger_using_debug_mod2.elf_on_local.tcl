connect -url tcp:127.0.0.1:3121
source /home/necryotiks/Documents/Repos/WSU-CPTE/EE324/Module_2/Module_2.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "RealDigital Bla 887100000093A"} -index 0
loadhw -hw /home/necryotiks/Documents/Repos/WSU-CPTE/EE324/Module_2/Module_2.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "RealDigital Bla 887100000093A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "RealDigital Bla 887100000093A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "RealDigital Bla 887100000093A"} -index 0
dow /home/necryotiks/Documents/Repos/WSU-CPTE/EE324/Module_2/Module_2.sdk/Mod2/Debug/Mod2.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "RealDigital Bla 887100000093A"} -index 0
con
