@echo off
title �ļ������� v1.0
if exist %tmp%\���ҽ��.tmp del %tmp%\���ҽ��.tmp
echo [ע������] ���·�������û�иú�׺���ļ�����������log�ļ�
echo.
title ��׺��������
set /p name=��������Ҫ�����ļ���׺���ļ���·����
set /p hou=��������Ҫ���ҵ��ļ�����(��׺����doc��ppt��)��
echo ����Ѱ�Һ�׺...
for /r %name%\ %%i in (*.%hou%) do (
    echo %%i >> %tmp%\���ҽ��.tmp
    echo ����%%i
)
echo ��������log�ļ�...
copy %tmp%\���ҽ��.tmp ���ҽ��.log >nul
echo log�ļ�������
echo �밴������˳�...
if exist %tmp%\���ҽ��.tmp del %tmp%\���ҽ��.tmp
pause>nul