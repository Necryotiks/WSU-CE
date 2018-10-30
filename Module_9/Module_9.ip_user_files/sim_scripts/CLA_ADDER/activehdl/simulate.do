onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+CLA_ADDER -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.CLA_ADDER xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {CLA_ADDER.udo}

run -all

endsim

quit -force
