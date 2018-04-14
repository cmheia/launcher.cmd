@echo off
setlocal

set MSYSTEM_VERSION=64

call %~dp0..\config\cfg_sys_path.cmd
call %~dp0..\config\cfg_msys%MSYSTEM_VERSION%_path.cmd

set MSYSTEM_VERSION=

set PATH=%SYS_PATH%;%PYTHON_PATH%;%NODE_PATH%

if not defined MSYSTEM (
  set MSYSTEM=MSYS
)

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

if "%1"=="" (
  set CMD=-i
) else (
  set CMD=-c "%*"
)

rem set MSYS=winsymlinks:nativestrict
rem set MSYS=error_start:%MSYS_PATH%\mingw64\bin\qtcreator.exe^|-debug^|^<process-id^>

set CHERE_INVOKING=1
set MSYS2_PATH_TYPE=inherit

start "" "%MSYS_HOME%\usr\bin\mintty" -i /msys2.ico -e /usr/bin/bash --login %CMD%

set MSYS2_PATH_TYPE=
set CHERE_INVOKING=
set MSYSTEM=
set CMD=
