@echo off
setlocal
title �Զ�����Ŀ¼������

set work_dir=%1
set target_arg=%1
set target_attr=%~a1
set target_type=%target_attr:~,1%
if not defined target_arg (
  mode con cols=40 lines=6
  color E0
  echo �X----------------------------------�[
  echo �� ʹ�÷���                         ��
  echo �� ��Ŀ���ļ�����ק�����ű�         ��
  echo �^----------------------------------�a
  pause
  exit
)

if "%target_type%" equ "d" (
  set work_dir=%~f1
) else (
  color E0
  echo ��֧���ļ��У���֧�ֵ����ļ�
  pause
  exit
)

color A0
echo ----------------------------------
echo Ŀ��·�� "%work_dir%"
echo �������� %~n1-Ŀ¼.txt
echo ----------------------------------

cd /d "%work_dir%"
set work_dir=
set target_arg=
set target_attr=
set target_type=

tree %1 /f > ..\%~n1-Ŀ¼.txt
