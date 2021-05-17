@echo off
title OS-Help

:shelp
cls
echo.
echo Type "apps" to get Help for any program you want.
echo Type "addons" to get Help how to make a Addon for OS.
echo Type "un/reinstall" to get Help for uninstall and reinstall.
echo Type "exit" to exit the Help.
set /p ti=
if "%ti%"=="apps" goto help
if "%ti%"=="addons" goto haddons
if "%ti%"=="un/reinstall" goto helpstall
if "%ti%"=="exit" exit
if not "%ti%"=="exit"=="help"=="helpstall" goto nh

:help
cls
echo.
echo Type in the program you need help.
set /p tih=
if "%tih%"=="calculator" goto hcalc
if "%tih%"=="word" goto hword
if "%tih%"=="internet" goto hint
if "%tih%"=="smalltalk" goto hst
if not "%tih%"=="calculator"=="word"=="internet"=="smalltalk" goto nhh
pause > nul

:hcalc
cls
echo.
echo First you type in the Number you will calculate.
echo Then type in the Operator (+, -, /, *).
echo At last type in the Number you will calculate from the First.
echo.
echo.
echo Press any Key to continue...
pause > nul
goto shelp

:hword
cls
echo.
echo First you type in your Text.
echo Then you can type in a own Name or choose a auto-generated.
echo.
echo.
echo Press any Key to continue...
pause > nul
goto shelp

:hint
cls
echo.
echo First choose a Adress-Type or write the URL self.
echo If you choose a Adress-Type you don't need to type in "www." and ".(Adress-Type)"
echo If you choose to type in self you need.
echo.
echo.
echo Press any Key to continue...
pause > nul
goto shelp

:hst
cls
echo.
echo You can type in your Name.
echo And how you are feel.
echo It will don't saved anywhere.
echo.
echo.
echo Press any Key to continue...
pause > nul
goto shelp

:haddons
cls
echo.
echo To make Addons you need to define the Addon in the Code.
echo The Rest is a Folder with the Name and with a File named "Config.osdata"
echo In this File you can write one Line to say if your Addon is On or Off.
echo What you write in this File you need to define in the Code too.
echo.
echo.
echo Press any Key to continue...
pause > nul
goto shelp

:helpstall
cls
echo.
echo Type in "uninstall" to get help how you are uninstall OS.
echo Type in "reinstall" to get help how you are reinstall OS.
set /p hstallti=
if "%hstallti%"=="uninstall" goto huninstall
if "%hstallti%"=="reinstall" goto hreinstall
if not "%hstallti%"=="uninstall"=="reinstall" goto nhs

:huninstall
cls
echo.
echo If you are in the menu type in "Q".
echo Then type in "uninstall" to uninstall OS.
echo If you type in "back" you will go back to the menu.
echo.
echo.
echo Press any Key to continue...
pause > nul
goto shelp

:hreinstall
cls
echo.
echo If you are in the menu type in "Y".
echo Then type in "reinstall" to reinstall OS.
echo If you type in "back" you will go back to the menu.
echo.
echo.
echo Press any Key to continue...
pause > nul
goto shelp

:nh
cls
echo.
echo %ti% is not available.
echo.
echo Press any Key to continue...
pause > nul
goto shelp

:nhh
cls
echo.
echo %tih% is not available.
echo.
echo Press any Key to continue...
pause > nul
goto shelp

:nhs
cls
echo.
echo %hstallti% is not available.
echo.
echo Press any Key to continue...
pause > nul
goto shelp