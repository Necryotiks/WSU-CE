onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+SVD_DRIVER_BD -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.SVD_DRIVER_BD xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {SVD_DRIVER_BD.udo}

run -all

endsim

quit -force
