onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+HDMI_VGA -L xil_defaultlib -L xpm -L xlslice_v1_0_1 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_12 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.HDMI_VGA xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {HDMI_VGA.udo}

run -all

endsim

quit -force
