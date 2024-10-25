@echo off

rem 检查是否提供了名称
if "%~1"=="" (
    echo 请提供要替换的文件名，例如: Rbuild16.bat new_name
    exit /b
)
set BASE_NAME=%~1
if exist %BASE_NAME%.obj (
    del %BASE_NAME%.obj
)
if exist %BASE_NAME%.map (
    del %BASE_NAME%.map
)
if exist %BASE_NAME%.exe (
    del %BASE_NAME%.exe
)

rem 编译汇编代码
ml /c /I%MASM% %BASE_NAME%.asm

rem 链接生成可执行文件
link16 /CODEVIEW %BASE_NAME%.obj,%BASE_NAME%.exe,,%MASM%\io16.lib,nul.def
echo result:
%BASE_NAME%.exe

pause
