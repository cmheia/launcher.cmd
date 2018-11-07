@echo off

set PYTHON_VERSION=3
set GCC_VERSION=4_8-2014q1

call %~dp0..\config\cfg_sys_path.cmd
call %~dp0..\config\cfg_python%PYTHON_VERSION%_path.cmd
call %~dp0..\config\cfg_gcc_%GCC_VERSION%_path.cmd
call %~dp0..\config\cfg_vscode_path.cmd

set PATH=%SYS_PATH%;%GCC_PATH%;%PYTHON_PATH%

set CONTITLE="%MSYSTEM% NODE PYTHON%PYTHON_VERSION%"

echo %PATH%
set TARGET_DIR=%~1

if defined TARGET_DIR (
  cd /d %TARGET_DIR%
  echo start at %TARGET_DIR%
) else (
  echo start at %~dp0
)

start %CONTITLE% %VSCODE_PATH%
::pause
