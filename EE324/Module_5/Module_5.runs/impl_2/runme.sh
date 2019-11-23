#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/SDK/2019.1/bin:/opt/Vivado/2019.1/ids_lite/ISE/bin/lin64:/opt/Vivado/2019.1/bin
else
  PATH=/opt/SDK/2019.1/bin:/opt/Vivado/2019.1/ids_lite/ISE/bin/lin64:/opt/Vivado/2019.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/sergaljerk/Documents/Repos/WSU-CPTE/EE324/Module_5/Module_5.runs/impl_2'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log CHAR_ROM_DISPLAY_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source CHAR_ROM_DISPLAY_wrapper.tcl -notrace


