onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib AXI_DEBUG_BD_opt

do {wave.do}

view wave
view structure
view signals

do {AXI_DEBUG_BD.udo}

run -all

quit -force
