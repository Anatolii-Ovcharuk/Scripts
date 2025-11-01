@echo off
REM Auto-start: Auto-start JavaScript on Server and Desktop for Windows. Made by Anatolii Ovcharuk. Version 0.1 for Windows - Update 09.09.2025 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .cmd file script for Windows, using Git Bash to run JS via Node.js
REM Installation notice: You need installing "Node.js" and "Git Bash" on your system. And you must place this script in folder, where you want open file.

echo Auto-start: Auto-start JavaScript on Server and Desktop for Windows. Made by Anatolii Ovcharuk. Version 0.1 for Windows - Update 09.09.2025 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .cmd file script for Windows, using Git Bash to run JS via Node.js
echo Installation notice: You need installing "Node.js" and "Git Bash" on your system. And you must place this script in folder, where you want open file.

REM Go to the directory where the .cmd file is located
cd /d "%~dp0"
color fc

REM === Запуск Git Bash и выполнение команды ===
REM --login    : запускает bash с профилем
REM -i         : интерактивный режим (оставляет окно открытым)
REM -c "..."   : команда, которую нужно выполнить

REM Можно указать относительный путь, если Git в PATH:
REM start "" bash --login -i -c "cd '%~dp0'; clear; node index.js; echo ''; read -n 1"

start "" "%ProgramFiles%\Git\bin\bash.exe" --login -i -c "cd '%~dp0'; clear; node index.js; echo ''; echo 'Press any key to exit...'; read -n 1"
