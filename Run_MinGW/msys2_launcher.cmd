@echo off

if not defined MSYSTEM_VERSION (
  set MSYSTEM_VERSION=64
)

call %~dp0..\config\cfg_msys%MSYSTEM_VERSION%_path.cmd

set CONTITLE="MSYS"

set PATH=%SYS_PATH%;%MSYS_PATH%

set TARGET_DIR=%1
if defined TARGET_DIR (
  cd %TARGET_DIR%
  echo start at %TARGET_DIR%
) else (
  echo start at %~dp0
)
set TARGET_DIR=

set CHERE_INVOKING=1

rem start "" %MSYS_PATH%\usr\bin\mintty -i /msys2.ico -t %CONTITLE% /usr/bin/bash --login
start %CONTITLE% %MSYS_PATH%\msys2.exe
set MSYSTEM_VERSION=
