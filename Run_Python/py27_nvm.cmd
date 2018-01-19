@echo off

set PYTHON_VERSION=27

call %~dp0..\config\cfg_global_proxy.cmd

call %~dp0..\config\cfg_sys_path.cmd
call %~dp0..\config\cfg_node_path.cmd
call %~dp0..\config\cfg_python%PYTHON_VERSION%_path.cmd

set CONTITLE="NVM PYTHON%PYTHON_VERSION%"

set PATH=%SYS_PATH%;%PYTHON_PATH%;%NODE_PATH%

set TARGET_DIR=%1
if defined TARGET_DIR (
  cd %TARGET_DIR%
  echo start at %TARGET_DIR%
) else (
  echo start at %~dp0
)
set TARGET_DIR=

set PYTHON_VERSION=

start %CONTITLE% python.exe
