@echo off

rem  Vivado (TM)
rem  runme.bat: a Vivado-generated Script
<<<<<<< HEAD
<<<<<<< HEAD
rem  Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
=======
rem  Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
>>>>>>> master
=======
rem  Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
>>>>>>> 5ec567faa533c067fd38e29ea17d6632d7cd74e8


set HD_SDIR=%~dp0
cd /d "%HD_SDIR%"
cscript /nologo /E:JScript "%HD_SDIR%\rundef.js" %*
