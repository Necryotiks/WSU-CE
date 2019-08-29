FILE=Bounce_Counter_FSM
TB_TOP=testbench.cpp

default: build


build:
	verilator -Wall --trace -cc $(FILE).v --exe $(TB_TOP)
	make -j -C obj_dir -f V$(FILE).mk V$(FILE)

run:
	obj_dir/V$(FILE)



