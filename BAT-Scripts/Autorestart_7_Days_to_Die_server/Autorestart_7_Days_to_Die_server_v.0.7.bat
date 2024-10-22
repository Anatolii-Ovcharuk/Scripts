@echo off


REM Autorestart: 7DTD Server for Windows. Made by Anatolii Ovcharuk. Version 0.7 for Windows - Update 10.09.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .bat file script for Windows, using CMD Console.
REM Notice for future: This script automated. This is version for server.


echo Autorestart: 7DTD Server for Windows. Made by Anatolii Ovcharuk. Version 0.7 for Windows - Update 10.09.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .bat file script for Windows, using CMD Console.
echo Notice for future: This script automated. This is version for server.

echo Initializating...

setlocal enabledelayedexpansion

:: Установите время между перезапусками в секундах (6 часов = 21600 секунд, 12 часов = 43200 секунд, 24 часа - 86400 секунд)
set restart_interval=43200

:: Инициализация переменной счетчика
set count=0

:start
echo Starting 7 Days to Die server...

:: Увеличиваем счетчик на 1
set /a count+=1

:: Печатаем текущее значение счетчика и установленное время до следующего рестарта
echo Total restart's: %count%
echo Current time set to restart: %restart_interval%

:: Переход в каталог с сервером
cd /d "D:\Steam\steamapps\common\7 Days to Die Dedicated Server"


:: Запуск сервера
REM Запускает сервер в обычном режиме.
REM start /wait 7DaysToDieServer.exe -configfile=serverconfig.xml
REM Запускает сервер в фоновом режиме.
start "" /b 7DaysToDieServer.exe -configfile=serverconfig.xml

:: Ждем заданное время
timeout /t %restart_interval% /nobreak


REM This is OLD version to off application...
REM :: Убиваем процесс сервера
REM taskkill /f /im 7DaysToDieServer.exe

REM This is NEW version to off application...
:: Использование PowerShell для корректного завершения процесса сервера
REM USE ONE OF ALL STRING:
REM powershell -command "Get-Process 7DaysToDieServer | Stop-Process -Force"
REM powershell -NoProfile -Command "Get-Process 7DaysToDieServer | Stop-Process -Force; exit"
REM powershell -NoProfile -Command "Get-Process 7DaysToDieServer | Stop-Process; exit"

REM Использование -ErrorAction SilentlyContinue помогает избежать сообщений об ошибках, если процесс не найден или уже завершен.
powershell -NoProfile -Command "Get-Process 7DaysToDieServer -ErrorAction SilentlyContinue | Stop-Process -ErrorAction SilentlyContinue"


:: Небольшая задержка перед перезапуском
timeout /t 10

:: Перезапуск сервера
goto start