@echo off

:padminfunktionen
Passwort eingeben
cls
set /p password=Passwort eingeben: 
if "%PASSWORD%"=="123" goto adminfunktionen

:adminfunktionen
title Adminfunktionen
cls
echo Hier sind die Adminfunktionen
echo.
echo [M]...Zum Menu
echo [P]...Personalisierung
echo [N]...Neustart
choice /c:mpn /n >nul
if errorlevel 3 goto neustart
if errorlevel 2 goto auswahlfarben
if errorlevel 1 goto menu
pause > nul

:auswahlfarben
title Personalisierung
cls
echo [H]...Hintergrundfarbe aendern
echo [S]...Schriftfarbe aendern
echo [M]...Menu
choice /c:hsm /n >nul
if errorlevel 3 goto menu
if errorlevel 2 goto schriftfarben
if errorlevel 1 goto hintergrundfarben
pause > nul

:schriftfarben
title Personalisierung
cls
echo Schriftfarben
echo.
echo [A] Hellgruen
echo [B] Helltuerkis
echo [C] Hellrot
echo [D] Helllila
echo [E] Hellgelb
echo [F] Weiss
echo [Z]...Zurueck
choice /c:fedcbaz /n >nul
if errorlevel 7 goto menu
if errorlevel 6 color 0a
if errorlevel 5 color 0b
if errorlevel 4 color 0c
if errorlevel 3 color 0d
if errorlevel 2 color 0e
if errorlevel 1 color 0f
goto schriftfarben

:hintergrundfarben
title Personalisierung
cls
echo Hintergrundfarben
echo.
echo [0] Schwarz
echo [1] Blau
echo [2] Gruen
echo [3] Tuerkis
echo [4] Rot
echo [5] Lila
echo [6] Gelb
echo [7] Hellgrau
echo [8] Grau
echo [9] Hellblau
echo [Z]...Zurueck
choice /c:9876543210z /n >nul
if errorlevel 11 goto adminfunktionen
if errorlevel 10 color 0f
if errorlevel 9 color 1f
if errorlevel 8 color 2f
if errorlevel 7 color 3f
if errorlevel 6 color 4f
if errorlevel 5 color 5f
if errorlevel 4 color 6f
if errorlevel 3 color 7f
if errorlevel 2 color 8f
if errorlevel 1 color 9f
goto hintergrundfarben

:neustart
start OS.bat
exit