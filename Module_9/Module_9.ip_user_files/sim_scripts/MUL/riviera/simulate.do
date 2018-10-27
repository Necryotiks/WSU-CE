onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+MUL -L xlslice_v1_0_1 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.MUL xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {MUL.udo}

run -all

endsim

quit -force
