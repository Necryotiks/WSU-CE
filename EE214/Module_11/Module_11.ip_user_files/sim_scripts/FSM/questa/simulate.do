onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FSM_opt

do {wave.do}

view wave
view structure
view signals

do {FSM.udo}

run -all

quit -force
