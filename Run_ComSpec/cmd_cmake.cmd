@echo off

call %~dp0..\config\cfg_cmake_path.cmd

call %~dp0..\config\cfg_sys_path.cmd

set CONTITLE="CMAKE"

set PATH=%SYS_PATH%;%CMAKE_PATH%

set TARGET_DIR=%1
if defined TARGET_DIR (
  cd %TARGET_DIR%
  echo start at %TARGET_DIR%
) else (
  echo start at %~dp0
)
set TARGET_DIR=

start %CONTITLE% %ComSpec%
