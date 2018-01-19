@echo off

set CMD_TITLE="NVM"

call %~dp0..\config\cfg_sys_path.cmd

call %~dp0..\config\cfg_node_path.cmd

set PATH=%SYS_PATH%;%NODE_PATH%

set TARGET_DIR="%1"

if exist %TARGET_DIR% (
	echo cd to %TARGET_DIR%
	cd %TARGET_DIR%
) else (
	echo run in %~dp0
)

start %CMD_TITLE% %ComSpec%
