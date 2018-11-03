onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ARITHMETIC_LOGIC_UNIT_opt

do {wave.do}

view wave
view structure
view signals

do {ARITHMETIC_LOGIC_UNIT.udo}

run -all

quit -force
