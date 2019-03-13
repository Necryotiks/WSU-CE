onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib PWM_IP_BD_opt

do {wave.do}

view wave
view structure
view signals

do {PWM_IP_BD.udo}

run -all

quit -force
