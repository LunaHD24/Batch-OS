@echo off

:rechner
title Rechner
cls
echo.
echo.
echo.
set /p rZahl1=Erste Zahl: 
set /p rSymbol=Operator(+, -, *, /): 
set /p rZahl2=Zweite Zahl: 
echo.
set /a rErg=%RZAHL1% %RSYMBOL% %RZAHL2%
echo.
echo Ergebnis: %RERG%
echo.
echo.
echo.
echo.
echo [M]...Menu
echo [N]...Neue Aufgabe
choice /c:mn /n >nul
if errorlevel 2 goto rechner
if errorlevel 1 exit