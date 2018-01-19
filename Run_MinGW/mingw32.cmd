@echo off

set MSYSTEM=MINGW32
"%~dp0msys2.cmd" %*
set MSYSTEM=
