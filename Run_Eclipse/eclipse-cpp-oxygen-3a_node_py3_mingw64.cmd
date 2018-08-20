@echo off
setlocal

set PYTHON_VERSION=3
set MSYSTEM_VERSION=64
set ECLIPSE_VERSION=-cpp-oxygen-3a

call %~dp0..\config\cfg_sys_path.cmd
call %~dp0..\config\cfg_node_path.cmd
call %~dp0..\config\cfg_python%PYTHON_VERSION%_path.cmd
call %~dp0..\config\cfg_msys%MSYSTEM_VERSION%_path.cmd
call %~dp0..\config\cfg_eclipse%ECLIPSE_VERSION%_path.cmd

set PATH=%SYS_PATH%;%PYTHON_PATH%;%NODE_PATH%;%MSYS_PATH%

if exist "%ECLIPSE_PATH%eclipse.exe" (
  cd /d "%ECLIPSE_PATH%"
) else (
  echo "eclipse.exe Â·¾¶´íÎó"
  pause
  goto :eof
)

set ECLIPSE_PATH=
set PYTHON_VERSION=
set MSYSTEM_VERSION=
set ECLIPSE_VERSION=

start "" eclipse.exe
