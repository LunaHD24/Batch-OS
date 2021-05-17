@echo off

:word
title World
cls
set /p wtext=Text: 
title Word Speicherung
cls
echo Wollen sie einen Namen festlegen?
echo [J/N]...Ja/Nein
choice /c:jn /n >nul
if errorlevel 2 goto save2
if errorlevel 1 goto save

:save2
title World Speicherung
cls
echo %WTEXT% >> WDoc_%date%.txt
move WDoc_%date%.txt Word-Documents
cls
echo.
echo.
echo.
echo ------------------------------------------
echo Ihr Text wurde als WDoc_%date%.txt gespeichert
echo ------------------------------------------
echo.
echo.
echo.
echo Um zum Menu zurueckzukehren druecken sie Enter...
pause > nul
goto menu

:save
title World Speicherung
cls
set /p wname=Name: 
echo %WTEXT% >> %WNAME%.txt
move %WNAME%.txt Word-Documents
cls
echo.
echo.
echo.
echo ------------------------------------------
echo Ihr Text wurde als %WNAME%.txt gespeichert
echo ------------------------------------------
echo.
echo.
echo.
echo Um zum Menu zurueckzukehren druecken sie Enter...
pause > nul
goto menu