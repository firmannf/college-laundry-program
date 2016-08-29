@echo off
SET THEFILE=d:\tasks\univer~1\1\alpro\tugasb~1\program\projec~1.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  D:\Tasks\UNIVER~1\1\Alpro\TUGASB~1\Program\rsrc.o -s   -b base.$$$ -o d:\tasks\univer~1\1\alpro\tugasb~1\program\projec~1.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
