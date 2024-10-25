@echo off
REM make32.bat, for assembling and linking 32-bit Console programs (.EXE)
BIN\ML /c /coff /Fl /Zi %1.asm
if errorlevel 1 goto terminate
BIN\LINK32 /subsystem:console /debug %1.obj
if errorlevel 1 goto terminate
DIR %1.*
:terminate
@echo on