onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib STOPWATCH_opt

do {wave.do}

view wave
view structure
view signals

do {STOPWATCH.udo}

run -all

quit -force
