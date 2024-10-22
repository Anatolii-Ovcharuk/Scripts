@echo off

REM Delete WebDisk: Delete WebDisk for Windows. Made by Anatolii Ovcharuk. Version 0.1 for Windows - Update 20.10.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .cmd file script for Windows, using CMD Console.
REM Notice for future: This script is automated. This is version for server and desktop. 

echo Delete WebDisk: Delete WebDisk for Windows. Made by Anatolii Ovcharuk. Version 0.1 for Windows - Update 20.10.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .cmd file script for Windows, using CMD Console.
echo Notice for future: This script is automated. This is version for server and desktop.

echo Initializing...
REM timeout /t 4
C:\Windows\System32\timeout.exe /t 4
echo Starting delete...

REM Command for delete WebDisk
net stop WebClient
sc config WebClient start=disabled

echo Completed.

REM Waiting to press any key / Ожидание нажатия клавиши
pause  

