@echo off

set PYTHON_VERSION=36

set MSYSTEM_VERSION=64

call %~dp0..\config\cfg_global_proxy.cmd

call %~dp0..\config\cfg_sys_path.cmd
call %~dp0..\config\cfg_node_path.cmd
call %~dp0..\config\cfg_python%PYTHON_VERSION%_path.cmd
call %~dp0..\config\cfg_msys%MSYSTEM_VERSION%_path.cmd
call %~dp0..\config\cfg_vscode_path.cmd

set CONTITLE="%MSYSTEM% NVM PYTHON%PYTHON_VERSION%"

set PATH=%SYS_PATH%;%PYTHON_PATH%;%NODE_PATH%;%MINGW_PATH%

set TARGET_DIR=%~1

if defined TARGET_DIR (
  cd %TARGET_DIR%
  echo start at %TARGET_DIR%
) else (
  echo start at %~dp0
)

start %CONTITLE% %VSCODE_PATH%

:: $ MINGW64 ~
:: pacman -S mingw64/mingw-w64-x86_64-gcc
:: pacman -S mingw64/mingw-w64-x86_64-gdb
:: pacman -S mingw64/mingw-w64-x86_64-make
