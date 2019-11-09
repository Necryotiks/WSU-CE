onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib CHAR_ROM_DISPLAY_opt

do {wave.do}

view wave
view structure
view signals

do {CHAR_ROM_DISPLAY.udo}

run -all

quit -force
