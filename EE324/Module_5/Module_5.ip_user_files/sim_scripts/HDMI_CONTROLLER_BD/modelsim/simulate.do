onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.HDMI_CONTROLLER_BD xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {HDMI_CONTROLLER_BD.udo}

run -all

quit -force
