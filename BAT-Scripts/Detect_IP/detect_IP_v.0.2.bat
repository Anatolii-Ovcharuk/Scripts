@echo off
title IP Detection Script v0.2
color a

echo Detect IP Address on current device on Server and Desktop for Windows.
echo Made by Anatolii Ovcharuk. Version 0.2 - Update 01.09.2025 / MIT License
echo Github: https://github.com/Anatolii-Ovcharuk
echo.

echo Initializating...
REM Инициализация переменных
set BROWSER=Unknown
set LOCATION=Script
set LANGUAGE=Unknown
set BASE_URL=https://app.netweb.top/api/ip

REM --------- Прогресс: 0% ----------
echo [__________] 0%

REM Получаем текущий публичный IP
echo Detecting IP...
for /f "delims=" %%i in ('curl -s https://api.ipify.org') do set MYIP=%%i
echo [XXX_______] 30%
echo Current device detected IP: %MYIP%

echo Requesting data...

REM Первый запрос к API
curl -s -X GET "%BASE_URL%/%MYIP%/%BROWSER%/%LOCATION%/%LANGUAGE%" >nul
echo [XXXXXX____] 60%

REM Второй запрос к API
curl -s -X GET "%BASE_URL%?ipv4=%MYIP%&browser=%BROWSER%&location=%LOCATION%&language=%LANGUAGE%" >nul
echo [XXXXXXXXXX] 100%

echo Requests complete.
pause
