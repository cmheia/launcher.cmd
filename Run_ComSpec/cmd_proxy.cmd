@echo off

call %~dp0..\config\cfg_global_proxy.cmd

set CONTITLE="LOCAL PROXY"

set TARGET_DIR=%1
if defined TARGET_DIR (
  cd %TARGET_DIR%
  echo start at %TARGET_DIR%
) else (
  echo start at %~dp0
)
set TARGET_DIR=

start %CONTITLE% %ComSpec%
