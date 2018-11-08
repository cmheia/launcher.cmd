@echo off
setlocal

call %~dp0..\config\cfg_msys64_path.cmd

::set PATH=%SYS_PATH%;%MSYS_PATH%;C:\Program Files\GNU MCU Eclipse\Build Tools\2.9-20170629-1013\bin\bin;D:\gnu\arm\4.8-2014q1\bin;D:\gnu\arm\4.8-2014q1\arm-none-eabi\bin;G:\dev\py27\Scripts;G:\dev\py27

%MSYS_HOME%\msys2_shell.cmd -mingw64
