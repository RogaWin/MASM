@ECHO OFF
REM build.bat,for assembling and linking 16-bit programs (.EXE)
%MASM%\bin\ml /c /Zd /Zi /I %MASM%\ %1.asm
if errorlevel 1 goto terminate
%MASM%\bin\link16 /CODEVIEW %1.obj,%1.exe,,%MASM%\io16.lib,nul.def
if errorlevel 1 goto terminate
DIR %1.*
:terminate
@echo on