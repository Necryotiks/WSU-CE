onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib LED_IP_opt

do {wave.do}

view wave
view structure
view signals

do {LED_IP.udo}

run -all

quit -force
