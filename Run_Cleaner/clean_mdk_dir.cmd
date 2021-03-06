@echo off
setlocal

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
) else (
  echo target dir must provided
  goto :eof
)
echo cd to "%work_dir%"
cd /d "%work_dir%"
set work_dir=
set target_arg=
set target_attr=
set target_type=

:begin
del /f /s /q *._2i
del /f /s /q *.__i
del /f /s /q *._ia
del /f /s /q *.axf
del /f /s /q *.bak
del /f /s /q *.bin
del /f /s /q *.cout
del /f /s /q *.crf
del /f /s /q *.d
del /f /s /q *.dep
del /f /s /q *.fed
del /f /s /q *.hex
del /f /s /q *.htm
del /f /s /q *.i
del /f /s /q *.iex
del /f /s /q *.l2p
del /f /s /q *.lnp
del /f /s /q *.lst
del /f /s /q *.map
del /f /s /q *.o
del /f /s /q *.pbd
del /f /s /q *.pbd.*
del /f /s /q *.pbi
del /f /s /q *.plg
del /f /s /q *.sct
del /f /s /q *.tmp
del /f /s /q *.tra
::del /f /s /q *.uvgui.*
::del /f /s /q *.uvguix.*
::del /f /s /q *.uvopt.*
::del /f /s /q *.uvoptx.*
del /f /s /q *.~*
del /f /s /q *_IROM*
del /f /s /q JLinkLog.txt
del /f /s /q JLinkSettings.ini
del /f /s /q pemicro_connection_settings.ini
del /f /s /q .DS_Store

::for /f "tokens=*" %%f in ('dir /b /ad /s .\^|sort /r') do rd "%%f" /q
for /f "tokens=*" %%f in ('dir /b /ad /s .\^|sort') do rd "%%f" /q
for /f "tokens=*" %%f in ('dir /b /ad /s .\^|sort') do rd "%%f" /q
