@echo off

set CONTITLE="CROSS-ARM-GCC"

set GCC_VERSION=4.8-2014q1

call %~dp0..\config\cfg_sys_path.cmd
call %~dp0..\config\cfg_gcc_%GCC_VERSION%_path.cmd

set MAKE_PATH=C:\Program Files\GNU MCU Eclipse\Build Tools\2.9-20170629-1013\bin\bin

set PATH=%SYS_PATH%;%MAKE_PATH%;%GCC_PATH%

set TARGET_DIR=%1

if defined TARGET_DIR (
  cd %TARGET_DIR%
  echo start at %TARGET_DIR%
) else (
  echo start at %~dp0
)

start %CONTITLE% %ComSpec%
