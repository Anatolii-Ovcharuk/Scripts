@echo off


REM Autorestart: 7DTD Server for Windows. Made by Anatolii Ovcharuk. Version 1.2 for Windows - Update 01.10.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .bat file script for Windows, using CMD Console.
REM Notice for future: This script automated. This is version for server.
REM Installation notice: You must place this script in folder 7DTD with program .exe, where you want open dedicated-server file. Then create Ink or create task manager with run this script.

echo Autorestart: 7DTD Server for Windows. Made by Anatolii Ovcharuk. Version 1.2 for Windows - Update 01.10.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .bat file script for Windows, using CMD Console.
echo Notice for future: This script automated. This is version for server.
echo Installation notice: You must place this script in folder 7DTD with program .exe, where you want open dedicated-server file. Then create Ink or create task manager with run this script.

echo Initializating...

setlocal enabledelayedexpansion

REM OPTIONS
:: Initializing the counter variable
set count=0
:: Set the time between restarts in seconds (6 hours = 21600 seconds, 12 hours = 43200 seconds, 24 hours = 86400 seconds)
set restart_interval=43200
:: Set the path to the executable file and directory in the variable's
set server_path="7DaysToDieServer.exe"

set server_directory="%~dp0"

:start
echo Starting 7 Days to Die server...

:: Increase the counter by 1
set /a count+=1

:: Print the current value of the counter, the set time until the next restart and the path to the executable file.
echo Total restart's: %count%
echo Current time set to restart: %restart_interval%
echo Set patch for run program: %server_path%
echo Set directory with program: %server_directory%

:: Go to the directory with the server
cd /d %server_directory%


:: Starting the server
REM Starts the server in normal mode.
REM start /wait 7DaysToDieServer.exe -configfile=serverconfig.xml
REM Starts the server in the background.
REM start "" /b 7DaysToDieServer.exe -configfile=serverconfig.xml
start "" /b %server_path% -configfile=serverconfig.xml

:: We wait for the specified time
REM timeout /t %restart_interval% /nobreak
C:\Windows\System32\timeout.exe /t %restart_interval% /nobreak


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
REM timeout /t 10
C:\Windows\System32\timeout.exe /t 10

:: Restarting the server
goto start
