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

set TARGET_DIR=%1
if defined TARGET_DIR (
  cd %TARGET_DIR%
  echo start at %TARGET_DIR%
) else (
  echo start at %~dp0
)
set TARGET_DIR=

if "%1"=="" (
  set CMD=-i
) else (
  set CMD=-c "%*"
)

rem set MSYS=winsymlinks:nativestrict
rem set MSYS=error_start:%MSYS_PATH%\mingw64\bin\qtcreator.exe^|-debug^|^<process-id^>

set CHERE_INVOKING=1
start "" "%MSYS_PATH%\usr\bin\mintty" -i /msys2.ico -e /usr/bin/bash --login %CMD%

set CHERE_INVOKING=
set MSYSTEM=
set CMD=
