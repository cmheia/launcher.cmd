@echo off
setlocal

set PYTHON_VERSION=27
set GCC_VERSION=4.8-2014q1

set MAKE_PATH=C:\Program Files\GNU MCU Eclipse\Build Tools\2.9-20170629-1013\bin\bin

call %~dp0..\config\cfg_sys_path.cmd
call %~dp0..\config\cfg_python%PYTHON_VERSION%_path.cmd
call %~dp0..\config\cfg_eclipse%ECLIPSE_VERSION%_path.cmd
call %~dp0..\config\cfg_gcc_%GCC_VERSION%_path.cmd

set PATH=%SYS_PATH%;%MAKE_PATH%;%GCC_PATH%;%PYTHON_PATH%

set work_dir=%~dp0
set target_arg=%1
set target_attr=%~a1
set target_type=%target_attr:~,1%
if defined target_arg (
  if "%target_type%" equ "d" (
    echo target is dir
    set work_dir=%~f1
  ) else (
    echo target is file
    set work_dir=%~dp1
  )
)
echo cd to "%work_dir%"
cd /d "%work_dir%"
set work_dir=
set target_arg=
set target_attr=
set target_type=

echo %PATH%
start %CONTITLE% %ComSpec%
::pause
