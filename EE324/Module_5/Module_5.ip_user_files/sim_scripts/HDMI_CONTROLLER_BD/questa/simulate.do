onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib HDMI_CONTROLLER_BD_opt

do {wave.do}

view wave
view structure
view signals

do {HDMI_CONTROLLER_BD.udo}

run -all

quit -force
