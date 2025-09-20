@echo off

echo Detect IP Address on current device on Server and Desktop for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 01.09.2025 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk

echo Initializating...
echo "[__________] 0%"

color a

echo "[X_________] 10%"

REM Получаем текущий публичный IP
for /f "delims=" %%i in ('curl -s https://api.ipify.org') do set MYIP=%%i

echo "[XX________] 20%"

REM Настраиваем другие параметры
set BROWSER=Unknown
set LOCATION=Script
set LANGUAGE=Unknown

REM Базовый URL API
set BASE_URL=https://app.netweb.top/api/ip

echo "[XXX_______] 30%"

echo "Current device detected IP: %MYIP%"
echo "Requesting data..."

echo "[XXXX______] 40%"
curl -X GET "%BASE_URL%/%MYIP%/%BROWSER%/%LOCATION%/%LANGUAGE%"
echo "[XXXXXX____] 60%"
curl -X GET "%BASE_URL%?ipv4=%MYIP%&browser=%BROWSER%&location=%LOCATION%&language=%LANGUAGE%"
echo "[XXXXXXXXXX] 100%"

echo "Requesting data complete."

pause
