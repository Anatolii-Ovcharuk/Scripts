@echo off

REM Auto-start: Auto-start JavaScript on Server and Desktop for Windows. Made by Anatolii Ovcharuk. Version 0.1 for Windows - Update 01.10.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .bat file script for Windows, using CMD Console.
REM Notice for future: This script is automated. This is version for server and desktop. 
REM Installation notice: You need installing "Node.js" on your system. And you must place this script in folder, where you want open file.

echo Auto-start: Auto-start JavaScript on Server and Desktop for Windows. Made by Anatolii Ovcharuk. Version 0.1 for Windows - Update 01.10.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .bat file script for Windows, using CMD Console.
echo Notice for future: This script is automated. This is version for server and desktop.
echo Installation notice: You need installing "Node.js" on your system. And you must place this script in folder, where you want open file.

REM Go to the directory where the bat file is located / Перейти в директорию, где находится bat файл
cd /d "%~dp0"  

REM Change here name to open file / Замените на путь к вашему файлу "example.js"
node example.js  

REM Waiting to press any key / Ожидание нажатия клавиши
pause  
