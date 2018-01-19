@echo off

set PYTHON_VERSION=36
set MSYSTEM=MINGW64

set CONTITLE="%MSYSTEM% NVM PYTHON%PYTHON_VERSION%"

call %~dp0..\config\cfg_global_proxy.cmd

call %~dp0..\config\cfg_sys_path.cmd
call %~dp0..\config\cfg_node_path.cmd
call %~dp0..\config\cfg_python%PYTHON_VERSION%_path.cmd
call %~dp0..\config\cfg_msys_path.cmd
call %~dp0..\config\cfg_vscode_path.cmd

set PATH=%SYS_PATH%;%PYTHON_PATH%;%NODE_PATH%;%MSYS_PATH%\mingw64\bin

set TARGET_DIR=%1

if defined TARGET_DIR (
  cd %TARGET_DIR%
  echo start at %TARGET_DIR%
) else (
  echo start at %~dp0
)

start %CONTITLE% %ComSpec%
