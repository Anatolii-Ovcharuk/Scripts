@echo off


REM Autorestart: 7DTD Server for Windows. Made by Anatolii Ovcharuk. Version 1.0 for Windows - Update 22.09.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .cmd file script for Windows, using CMD Console.
REM Notice for future: This script automated. This is version for server.


echo Autorestart: 7DTD Server for Windows. Made by Anatolii Ovcharuk. Version 1.0 for Windows - Update 22.09.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .cmd file script for Windows, using CMD Console.
echo Notice for future: This script automated. This is version for server.

echo Initializating...

setlocal enabledelayedexpansion

REM OPTIONS
:: Initializing the counter variable
set count=0
:: Set the time between restarts in seconds (6 hours = 21600 seconds, 12 hours = 43200 seconds, 24 hours = 86400 seconds)
set restart_interval=43200
:: Set the path to the executable file and directory in the variable's
set server_path="D:\Steam\steamapps\common\7 Days to Die Dedicated Server\7DaysToDieServer.exe"
set server_directory="D:\Steam\steamapps\common\7 Days to Die Dedicated Server"

:start
echo Starting 7 Days to Die server...

:: Increase the counter by 1
set /a count+=1

:: Print the current value of the counter, the set time until the next restart and the path to the executable file.
echo Total restart's: %count%
echo Current time set to restart: %restart_interval%
echo Set patch for run program: %server_path%

:: Go to the directory with the server
cd /d %server_directory%


:: Starting the server
REM Starts the server in normal mode.
REM start /wait 7DaysToDieServer.exe -configfile=serverconfig.xml
REM Starts the server in the background.
REM start "" /b 7DaysToDieServer.exe -configfile=serverconfig.xml
start "" /b %server_path% -configfile=serverconfig.xml

:: We wait for the specified time
timeout /t %restart_interval% /nobreak


REM This is OLD version to off application...
REM :: Killing the server process
REM taskkill /f /im 7DaysToDieServer.exe

REM This is NEW version to off application...
:: Using PowerShell to Gracefully Shut Down a Server Process
REM USE ONE OF ALL STRING:
REM powershell -command "Get-Process 7DaysToDieServer | Stop-Process -Force"
REM powershell -NoProfile -Command "Get-Process 7DaysToDieServer | Stop-Process -Force; exit"
REM powershell -NoProfile -Command "Get-Process 7DaysToDieServer | Stop-Process; exit"

REM Using -ErrorAction SilentlyContinue helps avoid error messages if the process is not found or has already exited.
powershell -NoProfile -Command "Get-Process 7DaysToDieServer -ErrorAction SilentlyContinue | Stop-Process -ErrorAction SilentlyContinue"


:: A short delay before restarting
timeout /t 10

:: Restarting the server
goto start

