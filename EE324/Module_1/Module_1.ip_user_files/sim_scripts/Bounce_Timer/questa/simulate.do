onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Bounce_Timer_opt

do {wave.do}

view wave
view structure
view signals

do {Bounce_Timer.udo}

run -all

quit -force
