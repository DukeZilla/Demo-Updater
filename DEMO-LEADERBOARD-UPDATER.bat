echo off
break off
title Career Stats

::Check
cls
cd %appdata%\bakkesmod\bakkesmod\data\
cd OBSCounter\Career
if %errorlevel%==1 (
color c
echo.
echo OBS Counter plugin not detected or installed.
echo.
echo Install the Stat counter plugin from the bakkesmod website to use this program.
echo.
pause
exit
)
cls
goto main

::Career stats
:main
for /f "usebackq" %%x in ( TotalCareerDemolitions.txt ) do ( set /a a = %%x )
for /f "usebackq" %%x in ( TotalCareerExterminations.txt ) do ( set /a b = %%x )
echo Copy ^& Paste: 
echo. 
echo D: %a% E: %b%
echo.
echo Press any key to refresh...
pause > null
cls
goto main