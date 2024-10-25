@echo off
REM make32.bat, for assembling and linking 32-bit Console programs (.EXE)
%MASM%\bin\ML /c /coff /Fl /Zi /I %MASM% %1.asm
if errorlevel 1 goto terminate

if /i %cd%==%MASM% ( echo %cd% ) else (
md bin 
copy %MASM%\bin\*.lib .\bin
)

%MASM%\bin\LINK32 /subsystem:console /debug /LIBPATH:%MASM%\ %1.obj

if /i %cd%==%MASM% ( echo %MASM% ) else (
del /Q .\bin\*.lib
rd bin
)

if errorlevel 1 goto terminate
DIR %1.*
:terminate
@echo on