onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib AXI_Test_opt

do {wave.do}

view wave
view structure
view signals

do {AXI_Test.udo}

run -all

quit -force
