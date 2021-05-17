@echo off

:internet
title Internet
cls
echo [S]...Selbst schreiben
echo [E]...Endung aussuchen
choice /c:se /n
if errorlevel 2 goto internet2
if errorlevel 1 goto internet3

:internet2
title Internet
cls
echo [C]...(.com)
echo [D]...(.de)
echo [N]...(.net)
echo [O]...(.online)
echo [T]...(.tv)
echo [E]...(.en)
echo []...(.)
choice /c:cdnote /n >nul
if errorlevel 6 goto ien
if errorlevel 5 goto itv
if errorlevel 4 goto ionline
if errorlevel 3 goto inet
if errorlevel 2 goto ide
if errorlevel 1 goto icom

:internet3
title Internet
cls
set /p i3=Website: 
start %I3%
goto internet
pause > nul

:icom
cls
echo (Endung .com)
set /p ecom=Website: 
start www.%ECOM%.com
goto internet
pause > nul

:ide
cls
echo (Endung .de)
set /p ede=Website: 
start www.%EDE%.de
goto internet
pause > nul

:inet
cls
echo (Endung .net)
set /p enet=Website: 
start www.%ENET%.net
goto internet
pause > nul

:ionline
cls
echo (Endung .online)
set /p eonline=Website: 
start www.%EONLINE%.online
goto internet
pause > nul

:itv
cls
echo (Endung .tv)
set /p etv=Website: 
start www.%ETV%.tv
goto internet
pause > nul

:ien
cls
echo (Endung .en)
set /p een=Website: 
start www.%EEN%.en
goto internet
pause > nul