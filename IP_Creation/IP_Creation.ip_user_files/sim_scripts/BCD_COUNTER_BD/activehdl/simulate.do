onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+BCD_COUNTER_BD -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.BCD_COUNTER_BD xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {BCD_COUNTER_BD.udo}

run -all

endsim

quit -force
