onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib HDMI_CTRL_opt

do {wave.do}

view wave
view structure
view signals

do {HDMI_CTRL.udo}

run -all

quit -force
