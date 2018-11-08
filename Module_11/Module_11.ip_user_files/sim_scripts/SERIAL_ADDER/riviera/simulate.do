onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+SERIAL_ADDER -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_12 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.SERIAL_ADDER xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {SERIAL_ADDER.udo}

run -all

endsim

quit -force
