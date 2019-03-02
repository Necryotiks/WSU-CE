onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+Bounce_Timer -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Bounce_Timer xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {Bounce_Timer.udo}

run -all

endsim

quit -force
