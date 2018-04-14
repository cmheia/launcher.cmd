@echo off

::set PATH=%SYS_PATH%;%MSYS_PATH%;C:\Program Files\GNU MCU Eclipse\Build Tools\2.9-20170629-1013\bin\bin;D:\gnu\arm\4.8-2014q1\bin;D:\gnu\arm\4.8-2014q1\arm-none-eabi\bin;G:\dev\py27\Scripts;G:\dev\py27

set MSYSTEM=MINGW32
"%~dp0msys2.cmd" %*
set MSYSTEM=
