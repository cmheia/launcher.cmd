@echo off

set PYTHON_VERSION=2
set MSYSTEM_VERSION=64
set ECLIPSE_VERSION=-cpp-oxygen-3a
set GCC_VERSION=4_8-2014q1
set MAKE_VERSION=gnumcueclipse

call %~dp0..\config\cfg_sys_path.cmd
call %~dp0..\config\cfg_node_path.cmd
call %~dp0..\config\cfg_python%PYTHON_VERSION%_path.cmd
rem call %~dp0..\config\cfg_msys%MSYSTEM_VERSION%_path.cmd
rem call %~dp0..\config\cfg_eclipse%ECLIPSE_VERSION%_path.cmd
call %~dp0..\config\cfg_gcc_%GCC_VERSION%_path.cmd
call %~dp0..\config\cfg_make_%MAKE_VERSION%_path.cmd

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

set PATH=%SYS_PATH%;%PYTHON_PATH%;%NODE_PATH%;%GCC_PATH%;%MAKE_PATH%

set ECLIPSE_PATH=
set PYTHON_VERSION=
set MSYSTEM_VERSION=
set ECLIPSE_VERSION=

if exist "%ECLIPSE_PATH%eclipse.exe" (
  start "" eclipse.exe
) else (
  echo "eclipse.exe Â·¾¶´íÎó"
  pause
)
