onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_12 -L xlslice_v1_0_1 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.HDMI_VGA xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {HDMI_VGA.udo}

run -all

quit -force
