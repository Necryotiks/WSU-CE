onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib S_A_FSM_opt

do {wave.do}

view wave
view structure
view signals

do {S_A_FSM.udo}

run -all

quit -force
