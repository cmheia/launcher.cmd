@echo off
setlocal

set PYTHON_VERSION=2
set ECLIPSE_VERSION=-cpp-head
set GCC_VERSION=msys64
set MAKE_VERSION=msys64

call %~dp0..\config\cfg_sys_path.cmd
::call %~dp0..\config\cfg_python%PYTHON_VERSION%_path.cmd
call %~dp0..\config\cfg_eclipse%ECLIPSE_VERSION%_path.cmd
call %~dp0..\config\cfg_gcc_%GCC_VERSION%_path.cmd
call %~dp0..\config\cfg_make_%MAKE_VERSION%_path.cmd

set PATH=%SYS_PATH%;%MAKE_PATH%;%GCC_PATH%

if exist "%ECLIPSE_PATH%eclipse.exe" (
  echo cd to "%ECLIPSE_PATH%"
  cd /d "%ECLIPSE_PATH%"
) else (
  echo eclipse.exe Â·¾¶´íÎó
  pause
  goto :eof
)

if exist "eclipse.exe" (
  echo run eclipse.exe
) else (
  echo eclipse.exe ²»´æÔÚ
  pause
  goto :eof
)

set ECLIPSE_PATH=
set PYTHON_VERSION=
set ECLIPSE_VERSION=

echo run eclipse.exe

echo %PATH%
start "" eclipse.exe
::pause
