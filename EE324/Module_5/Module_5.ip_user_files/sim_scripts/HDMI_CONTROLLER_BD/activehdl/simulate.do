onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+HDMI_CONTROLLER_BD -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.HDMI_CONTROLLER_BD xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {HDMI_CONTROLLER_BD.udo}

run -all

endsim

quit -force
