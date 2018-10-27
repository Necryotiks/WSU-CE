onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib CMP_opt

do {wave.do}

view wave
view structure
view signals

do {CMP.udo}

run -all

quit -force
