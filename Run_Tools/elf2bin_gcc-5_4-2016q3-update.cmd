@echo off
setlocal

set PYTHON_VERSION=2
set GCC_VERSION=5_4-2016q3-update
set MAKE_VERSION=gnumcueclipse

call %~dp0..\config\cfg_sys_path.cmd
call %~dp0..\config\cfg_python%PYTHON_VERSION%_path.cmd
call %~dp0..\config\cfg_eclipse%ECLIPSE_VERSION%_path.cmd
call %~dp0..\config\cfg_gcc_%GCC_VERSION%_path.cmd
call %~dp0..\config\cfg_make_%MAKE_VERSION%_path.cmd

set PATH=%SYS_PATH%;%MAKE_PATH%;%GCC_PATH%;%PYTHON_PATH%

echo %PATH%
arm-none-eabi-objcopy -O binary %1 %1.bin
::pause
