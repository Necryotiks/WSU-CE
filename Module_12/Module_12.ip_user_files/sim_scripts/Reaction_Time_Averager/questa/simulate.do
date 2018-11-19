onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Reaction_Time_Averager_opt

do {wave.do}

view wave
view structure
view signals

do {Reaction_Time_Averager.udo}

run -all

quit -force
