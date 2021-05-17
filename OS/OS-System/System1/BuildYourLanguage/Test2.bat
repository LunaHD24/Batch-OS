@echo off
for /F "usebackq" %%a in (./define.dyl) do set define=%%a
goto 1

:1
for /F "usebackq" %%a in (./program.dyl) do set compile=%%a
if "%compile%"=="say("%define%")" goto compile

:compile
echo %define%
for /F "usebackq" %%a in (./define.dyl) do set define=%%a
pause > nul

::This is one Tile of a Command define