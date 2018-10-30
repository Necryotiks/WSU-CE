onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib S_ADDER_opt

do {wave.do}

view wave
view structure
view signals

do {S_ADDER.udo}

run -all

quit -force
