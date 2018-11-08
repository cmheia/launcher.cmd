@echo off
setlocal
title 自动生成目录树工具

set work_dir=%1
set target_arg=%1
set target_attr=%~a1
set target_type=%target_attr:~,1%
if not defined target_arg (
  mode con cols=40 lines=6
  color E0
  echo ╔----------------------------------╗
  echo ┆ 使用方法                         ┆
  echo ┆ 把目标文件夹拖拽到本脚本         ┆
  echo ╚----------------------------------╝
  pause
  exit
)

if "%target_type%" equ "d" (
  set work_dir=%~f1
) else (
  color E0
  echo 仅支持文件夹，不支持单个文件
  pause
  exit
)

color A0
echo ----------------------------------
echo 目标路径 "%work_dir%"
echo 正在生成 %~n1-目录.txt
echo ----------------------------------

cd /d "%work_dir%"
set work_dir=
set target_arg=
set target_attr=
set target_type=

tree %1 /f > ..\%~n1-目录.txt
