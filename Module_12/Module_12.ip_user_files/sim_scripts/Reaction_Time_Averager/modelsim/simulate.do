onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.Reaction_Time_Averager xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {Reaction_Time_Averager.udo}

run -all

quit -force
