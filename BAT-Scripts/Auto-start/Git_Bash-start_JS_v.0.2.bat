@echo off
REM Auto-start: Auto-start JavaScript on Server and Desktop for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 09.09.2025 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .bat file script for Windows, using Git Bash to run JS via Node.js
REM Installation notice: You need installing "Node.js" and "Git Bash" on your system.

echo ===============================================================
echo Auto-start: Auto-start JavaScript on Server and Desktop for Windows
echo Made by Anatolii Ovcharuk - Version 0.2 - Update 09.09.2025 / MIT License
echo Github: https://github.com/Anatolii-Ovcharuk
echo ===============================================================

REM --- Переход в директорию, где лежит скрипт ---
cd /d "%~dp0"
color fc

REM --- Определяем путь к Git Bash ---
set "GITBASH="
if exist "%ProgramFiles%\Git\bin\bash.exe" set "GITBASH=%ProgramFiles%\Git\bin\bash.exe"
if exist "%ProgramFiles(x86)%\Git\bin\bash.exe" set "GITBASH=%ProgramFiles(x86)%\Git\bin\bash.exe"

REM --- Если не найден в Program Files, пробуем через PATH ---
if "%GITBASH%"=="" (
    for /f "tokens=* usebackq" %%i in (`where bash 2^>nul`) do set "GITBASH=%%i"
)

REM --- Если Git Bash не найден - выводим ошибку ---
if "%GITBASH%"=="" (
    echo [ERROR] Git Bash not found! Please install Git for Windows or add bash.exe to PATH.
    pause
    exit /b 1
)

REM --- Запуск Git Bash ---
echo [INFO] Starting Git Bash from: %GITBASH%
start "" "%GITBASH%" --login -i -c "cd '%~dp0'; clear; node index.js; echo ''; echo 'Press any key to exit...'; read -n 1"
