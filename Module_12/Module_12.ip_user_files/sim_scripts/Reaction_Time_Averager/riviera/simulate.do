onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+Reaction_Time_Averager -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Reaction_Time_Averager xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {Reaction_Time_Averager.udo}

run -all

endsim

quit -force
