@echo off

set PYTHON_VERSION=3
set CMD_TITLE="PY%PYTHON_VERSION%"

call %~dp0..\config\cfg_python_proxy.cmd

call %~dp0..\config\cfg_sys_path.cmd

call %~dp0..\config\cfg_python%PYTHON_VERSION%_path.cmd

set PATH=%SYS_PATH%;%PYTHON_PATH%

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

start %CMD_TITLE% %ComSpec%
