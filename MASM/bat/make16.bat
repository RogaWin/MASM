@echo off
REM make16.bat,for assembling and linking 16-bit programs (.EXE)
BIN\ML /nologo /c /Fl /Zi %1.asm
if errorlevel 1 goto terminate
BIN\LINK16 /nologo /CO %1.obj;
if errorlevel 1 goto terminate
DIR %1.*
:terminate
@echo on
