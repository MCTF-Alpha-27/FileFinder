@echo off
title 文件查找器 v1.0
if exist %tmp%\查找结果.tmp del %tmp%\查找结果.tmp
echo [注意事项] 如果路径错误或没有该后缀的文件将不会生成log文件
echo.
title 后缀名查找器
set /p name=请输入想要查找文件后缀的文件夹路径：
set /p hou=请输入想要查找的文件类型(后缀，如doc、ppt等)：
echo 正在寻找后缀...
for /r %name%\ %%i in (*.%hou%) do (
    echo %%i >> %tmp%\查找结果.tmp
    echo 发现%%i
)
echo 正在生成log文件...
copy %tmp%\查找结果.tmp 查找结果.log >nul
echo log文件已生成
echo 请按任意键退出...
if exist %tmp%\查找结果.tmp del %tmp%\查找结果.tmp
pause>nul