@echo off

REM Auto-start: Auto-start JavaScript on Server and Desktop for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 06.06.2025 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .cmd file script for Windows, using PowerShell to run JS via Node.js
REM Installation notice: You need installing "Node.js" on your system. And you must place this script in folder, where you want open file.

echo Auto-start (PowerShell version): Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 06.06.2025 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This script runs JavaScript via PowerShell using Node.js

REM Go to the directory where the bat file is located
cd /d "%~dp0"

REM Запуск JS-файла через PowerShell
start powershell -NoProfile -ExecutionPolicy Bypass -Command "cd '%~dp0'; node .\index.js; Write-Host 'Press any key to exit...'; $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')"

REM Pause after execution
pause
