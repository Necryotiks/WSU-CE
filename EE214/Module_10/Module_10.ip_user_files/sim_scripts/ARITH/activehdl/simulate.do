onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ARITH -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ARITH xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ARITH.udo}

run -all

endsim

quit -force
