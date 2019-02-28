onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xlslice_v1_0_1 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.ARITHMETIC_LOGIC_UNIT xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {ARITHMETIC_LOGIC_UNIT.udo}

run -all

quit -force
