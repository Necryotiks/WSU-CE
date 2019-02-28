onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ARITH_opt

do {wave.do}

view wave
view structure
view signals

do {ARITH.udo}

run -all

quit -force
