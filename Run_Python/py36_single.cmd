@echo off

set PYTHON_VERSION=36

set CONTITLE="PYTHON%PYTHON_VERSION%"

set SYS_PATH=%SystemRoot%\system32;%SystemRoot%

set PYTHON_HOME=G:\dev\py36
set PYTHON_PATH=%PYTHON_HOME%;%PYTHON_HOME%\Scripts

set PATH=%SYS_PATH%;%PYTHON_PATH%

set work_dir=%~dp0
set target_arg=%1
set target_attr=%~a1
set target_type=%target_attr:~,1%
if defined target_arg (
  if "%target_type%" equ "d" (
    echo target is dir
    set work_dir=%~f1
  ) else (
    echo target is file
    set work_dir=%~dp1
  )
)
echo cd to "%work_dir%"
cd "%work_dir%"
set work_dir=
set target_arg=
set target_attr=
set target_type=

start %CONTITLE% python.exe
