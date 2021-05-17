@echo off

:smalltalk
title Smalltalk
cls
echo Wie heissen sie?
set /p username=
goto st1

:st1
cls
echo Hallo %USERNAME%!
echo Ich heisse Smalltalk-System, kurz STS.
goto st2

:st2
cls
echo Und wie geht es dir %USERNAME%?
set /p feeling=
if "%FEELING%"=="gut" goto st3
if "%FEELING%"=="Gut" goto st3
if "%FEELING%"=="schlecht" goto st4
if "%FEELING%"=="Schlecht" goto st4
if not "%FEELING%"=="gut"=="Gut"=="schlecht"=="schlecht" goto st5
pause > nul

:st3
cls
echo Schoen! Mir geht es auch gut.
pause > nul
exit

:st4
cls
echo Ok, mir geht es auch nicht gut.
pause > nul
exit

:st5
cls
echo Das weiss ich leider nicht.
echo.
echo.
echo.
pause
goto st2