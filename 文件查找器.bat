@echo off
set version=v1.2
title �ļ������� %version% Author: Jerry
:start
if exist %tmp%\���ҽ��.tmp del %tmp%\���ҽ��.tmp
echo [ע������] ���·�������û�иú�׺���ļ�����������log�ļ�
echo [������־] �汾%version% �޸��˰汾�Ų���ʾ������
echo.
title �ļ�������
set /p name=��������Ҫ�����ļ���׺���ļ���·��������q���˳�����
if %name% == q exit
if %name% == Q exit
set /p hou=��������Ҫ���ҵ��ļ�����(��׺����doc��ppt��)��
echo ����Ѱ���ļ�...
for /r %name%\ %%i in (*.%hou%) do (
    echo %%i >> %tmp%\���ҽ��.tmp
    echo ����%%i
)
echo ��������log�ļ�...
copy %tmp%\���ҽ��.tmp ���ҽ��.log >nul
echo log�ļ�������.
if exist %tmp%\���ҽ��.tmp del %tmp%\���ҽ��.tmp
pause >nul
cls
goto start