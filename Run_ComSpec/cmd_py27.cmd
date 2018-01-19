@echo off

set PYTHON_VER=27
set CMD_TITLE="PY%PYTHON_VER%"

call %~dp0..\config\cfg_python_proxy.cmd

call %~dp0..\config\cfg_sys_path.cmd

call %~dp0..\config\cfg_python%PYTHON_VER%_path.cmd

set PATH=%SYS_PATH%;%PYTHON_PATH%

set TARGET_DIR="%1"

if exist %TARGET_DIR% (
	echo cd to %TARGET_DIR%
	cd %TARGET_DIR%
) else (
	echo run in %~dp0
)

start %CMD_TITLE% %ComSpec%
