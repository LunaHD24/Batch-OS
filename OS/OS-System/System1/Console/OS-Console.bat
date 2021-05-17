@echo off
title C:\OS\OS-System\System1\Console\OS-Console
goto c1

:c1
cls
echo.
echo This is the OS-Console.
echo From here you can manage all Files of the OS.
echo.
echo.
echo Press any Key to continue...
pause > nul
cls
goto c2

:c2
echo.
set /p tic2=OS 
if "%tic2%"==">>OS-System" goto c3
if "%tic2%"==">>OS\OS-System" goto c3
if "%tic2%"=="tree" goto ptree
if not "%tic2%"==">>OS-System"=="OS\OS-System"=="tree" goto e1
pause > nul

:c3
echo.
set /p tic3=OS\OS-System 
if "%tic3%"==">>System1" goto c4
if "%tic3%"==">>OS\OS-System\System1" goto c4
if "%tic3%"==">>Help.bat" goto p1
if "%tic3%"==">>OS\OS-System\Help.bat" goto p1
if "%tic3%"=="start Help.bat" goto p1
if not "%tic3%"==">>System1"==">>OS\OS-System\System1"==">>Help.bat"=="start Help.bat" goto e2
pause > nul

:c4
echo.
set /p tic4=OS\OS-System\System1 
pause > nul










:p1
cd ConsoleManagement
start Help.bat
goto c3






:e1
echo.
echo The System can't find the File-Path.
echo.
echo Press any Key to continue...
pause > nul
goto c2

:e2
echo.
echo The System can't find the File-Path.
echo.
echo Press any Key to continue...
pause > nul
goto c3

:ptree
echo.
echo.
echo OS
echo |
echo |----OS.bat
echo |
echo |----README.txt
echo |
echo |----Word-Documents
echo |
echo |----OS-System
echo      |
echo      |----System1
echo      |    |----------------------Apps
echo      |                       |
echo      |----UserInfo           |---BuildYourLanguage
echo           |                  |
echo           |                  |---Console
echo           |----Logins        |
echo           |                  |---Defines
echo           |----Logs          |
echo           |                  |---User
echo           |----Personal      |
echo           |                  |---UserSettings
echo           |----Help.bat
pause > nul