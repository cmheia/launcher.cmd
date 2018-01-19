@echo off

set MSYSTEM=MINGW64
"%~dp0msys2.cmd" %*
set MSYSTEM=
