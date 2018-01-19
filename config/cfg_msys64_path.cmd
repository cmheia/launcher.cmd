@echo off

if defined MSYSTEM_VERSION (
    echo MinGW x%MSYSTEM_VERSION%
) else (
  set MSYSTEM_VERSION=64
)

set MSYSTEM=MINGW%MSYSTEM_VERSION%
set MSYS_HOME=C:\dev\msys64
set MSYS_PATH=%MSYS_HOME%\usr\bin;%MSYS_HOME%\mingw%MSYSTEM_VERSION%\bin
set MSYS_HOME=
