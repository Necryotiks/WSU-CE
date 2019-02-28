onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib SERIAL_ADDER_opt

do {wave.do}

view wave
view structure
view signals

do {SERIAL_ADDER.udo}

run -all

quit -force
