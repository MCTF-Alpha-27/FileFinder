@echo off
set version=v1.3
title 文件查找器
:start
if exist %tmp%\查找结果.tmp del %tmp%\查找结果.tmp
echo [注意事项] 如果路径错误或没有该后缀的文件将不会生成log文件
echo [更新日志] 版本%version% 现在生成log文件后会一并打开log文件
echo.
title 文件查找器
set /p name=请输入想要查找文件后缀的文件夹路径（输入q来退出）：
if "%name%" == "" cls & goto start
if %name% == q exit
if %name% == Q exit
set /p hou=请输入想要查找的文件类型(后缀，如doc、ppt等)：
echo 正在寻找文件...
for /r %name%\ %%i in (*.%hou%) do (
    echo %%i >> %tmp%\查找结果.tmp
    echo 发现%%i
)
echo 正在生成log文件...
copy %tmp%\查找结果.tmp 查找结果.log >nul
echo log文件已生成.
if exist %tmp%\查找结果.tmp del %tmp%\查找结果.tmp
start 查找结果.log
pause >nul
cls
goto start
