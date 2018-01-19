@echo off

set PYTHON_VERSION=36

set CONTITLE="PYTHON%PYTHON_VERSION%"

set SYS_PATH=%SystemRoot%\system32;%SystemRoot%

set PYTHON_HOME=G:\dev\py36
set PYTHON_PATH=%PYTHON_HOME%;%PYTHON_HOME%\Scripts

set PATH=%SYS_PATH%;%PYTHON_PATH%

set TARGET_DIR=%1

if defined TARGET_DIR (
  cd %TARGET_DIR%
  echo start at %TARGET_DIR%
) else (
  echo start at %~dp0
)

start %CONTITLE% python.exe
