onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xlslice_v1_0_1 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.Reaction_Time_Averager xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {Reaction_Time_Averager.udo}

run -all

quit -force
