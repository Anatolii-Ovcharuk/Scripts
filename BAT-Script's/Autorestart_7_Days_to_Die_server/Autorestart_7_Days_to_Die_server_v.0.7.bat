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

:: ���������� ����� ����� ������������� � �������� (6 ����� = 21600 ������, 12 ����� = 43200 ������, 24 ���� - 86400 ������)
set restart_interval=43200

:: ������������� ���������� ��������
set count=0

:start
echo Starting 7 Days to Die server...

:: ����������� ������� �� 1
set /a count+=1

:: �������� ������� �������� �������� � ������������� ����� �� ���������� ��������
echo Total restart's: %count%
echo Current time set to restart: %restart_interval%

:: ������� � ������� � ��������
cd /d "D:\Steam\steamapps\common\7 Days to Die Dedicated Server"


:: ������ �������
REM ��������� ������ � ������� ������.
REM start /wait 7DaysToDieServer.exe -configfile=serverconfig.xml
REM ��������� ������ � ������� ������.
start "" /b 7DaysToDieServer.exe -configfile=serverconfig.xml

:: ���� �������� �����
timeout /t %restart_interval% /nobreak


REM This is OLD version to off application...
REM :: ������� ������� �������
REM taskkill /f /im 7DaysToDieServer.exe

REM This is NEW version to off application...
:: ������������� PowerShell ��� ����������� ���������� �������� �������
REM USE ONE OF ALL STRING:
REM powershell -command "Get-Process 7DaysToDieServer | Stop-Process -Force"
REM powershell -NoProfile -Command "Get-Process 7DaysToDieServer | Stop-Process -Force; exit"
REM powershell -NoProfile -Command "Get-Process 7DaysToDieServer | Stop-Process; exit"

REM ������������� -ErrorAction SilentlyContinue �������� �������� ��������� �� �������, ���� ������� �� ������ ��� ��� ��������.
powershell -NoProfile -Command "Get-Process 7DaysToDieServer -ErrorAction SilentlyContinue | Stop-Process -ErrorAction SilentlyContinue"


:: ��������� �������� ����� ������������
timeout /t 10

:: ���������� �������
goto start