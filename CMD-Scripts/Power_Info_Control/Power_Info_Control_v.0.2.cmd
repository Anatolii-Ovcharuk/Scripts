@echo off
REM Information: Power Info Control for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 22.11.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .cmd file script for Windows, using CMD Console.


REM Информация в консоли / Information in console
echo Initializating...
echo Information: Power Info Control for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 22.11.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .cmd file script for Windows, using CMD Console.
echo Press any key to continue.
pause
echo Starting process...

REM Операции в Windows CMD / Operation in Windows CMD

echo 'Starting get total information...'
powercfg /query

echo 'Starting get information about battery...'
powercfg /batteryreport

echo 'Starting get information about energy...'
powercfg /energy

echo 'Ready get all information.'

echo 'Press any key to exit...'
pause
exit
