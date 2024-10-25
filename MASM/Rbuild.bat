@echo off
set MASM=A:\MASM

rem 检查是否提供了名称
if "%~1"=="" (
    echo 请提供要替换的文件名，例如: Rbuild32.bat new_name
    exit /b
)
set BASE_NAME=%~1
if exist %BASE_NAME%.obj (
    del %BASE_NAME%.obj
)
if exist %BASE_NAME%.pdb (
    del %BASE_NAME%.pdb
)
if exist %BASE_NAME%.ilk (
    del %BASE_NAME%.ilk
)
if exist %BASE_NAME%.exe (
    del %BASE_NAME%.exe
)
rem 编译汇编代码
ml /c /coff /I %MASM% %BASE_NAME%.asm

rem 链接生成可执行文件
link32 /subsystem:console /debug /LIBPATH:%MASM% %BASE_NAME%.obj
echo result:
%BASE_NAME%.exe

pause
