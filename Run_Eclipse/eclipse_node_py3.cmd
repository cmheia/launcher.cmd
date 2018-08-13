@echo off
setlocal

set PYTHON_VERSION=3
set ECLIPSE_VERSION=

call %~dp0..\config\cfg_sys_path.cmd
call %~dp0..\config\cfg_node_path.cmd
call %~dp0..\config\cfg_python%PYTHON_VERSION%_path.cmd
call %~dp0..\config\cfg_eclipse%ECLIPSE_VERSION%_path.cmd

set PATH=%SYS_PATH%;%PYTHON_PATH%;%NODE_PATH%

if exist "%ECLIPSE_PATH%eclipse.exe" (
  cd /d "%ECLIPSE_PATH%"
) else (
  echo "eclipse.exe Â·¾¶´íÎó"
  pause
  goto :eof
)

set ECLIPSE_PATH=
set PYTHON_VERSION=
set ECLIPSE_VERSION=

start "" eclipse.exe
