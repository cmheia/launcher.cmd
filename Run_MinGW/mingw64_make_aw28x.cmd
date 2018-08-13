@echo off

if not defined MSYSTEM_VERSION (
  set MSYSTEM_VERSION=64
)

set PYTHON_VERSION=2
set GCC_VERSION=4_8-2014q1
set MAKE_VERSION=gnumcueclipse

call %~dp0..\config\cfg_msys%MSYSTEM_VERSION%_path.cmd
call %~dp0..\config\cfg_python%PYTHON_VERSION%_path.cmd
call %~dp0..\config\cfg_eclipse%ECLIPSE_VERSION%_path.cmd
call %~dp0..\config\cfg_gcc_%GCC_VERSION%_path.cmd
call %~dp0..\config\cfg_make_%MAKE_VERSION%_path.cmd

set CONTITLE="MinGW x%MSYSTEM_VERSION%"

::set PATH=%SYS_PATH%;%MSYS_PATH%;C:\Program Files\GNU MCU Eclipse\Build Tools\2.9-20170629-1013\bin\bin;D:\gnu\arm\4.8-2014q1\bin;D:\gnu\arm\4.8-2014q1\arm-none-eabi\bin;G:\dev\py27\Scripts;G:\dev\py27
set PATH=%SYS_PATH%;%MSYS_PATH%;%MAKE_PATH%;%GCC_PATH%;%PYTHON_PATH%

set work_dir=D:\gitlab\aworks2\aw_imx28x

echo cd to "%work_dir%"
cd /d "%work_dir%"
set work_dir=
set target_arg=
set target_attr=
set target_type=

set CHERE_INVOKING=1
set MSYS2_PATH_TYPE=inherit

echo start %CONTITLE% %MSYS_HOME%\mingw%MSYSTEM_VERSION%.exe
::pause
rem start "" %MSYS_HOME%\usr\bin\mintty -i /msys2.ico -t %CONTITLE% /usr/bin/bash --login
start %CONTITLE% %MSYS_HOME%\mingw%MSYSTEM_VERSION%.exe

set MSYSTEM_VERSION=
set CHERE_INVOKING=
set MSYS2_PATH_TYPE=
