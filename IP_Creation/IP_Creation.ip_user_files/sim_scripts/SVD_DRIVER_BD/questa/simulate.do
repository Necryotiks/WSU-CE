onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib SVD_DRIVER_BD_opt

do {wave.do}

view wave
view structure
view signals

do {SVD_DRIVER_BD.udo}

run -all

quit -force
