onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib CLA_ADDER_opt

do {wave.do}

view wave
view structure
view signals

do {CLA_ADDER.udo}

run -all

quit -force
