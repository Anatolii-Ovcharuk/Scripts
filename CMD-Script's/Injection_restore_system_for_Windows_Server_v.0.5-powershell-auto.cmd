@echo off
REM Injection: Restore system for Windows. Made by Anatolii Ovcharuk. Version 0.5 for Windows - Update 08.08.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .bat file script for Windows, using Powershell Console. Approximate completion time: 30 minutes.
REM Notice for future: This script automated. This is version for server.

echo Initializating...

REM Информация в консоли / Information in console
echo Injection: Restore system for Windows. Made by Anatolii Ovcharuk. Version 0.5 for Windows - Update 08.08.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .cmd file script for Windows, using Powershell Console. Approximate completion time: 30 minutes.
echo Notice for future: This script automated. This is version for server.
echo Starting process...

REM Запуск Windows PowerShell / Running Windows PowerShell
REM Заметка: Явное указание пути к PowerShell - "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
timeout /t 2 >nul
start powershell
timeout /t 1 >nul

REM Операции в Windows Powershell Console / Operation in Windows Powershell Console
REM Запуск DISM / Running DISM command
powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('DISM.exe /Online /Cleanup-image /Restorehealth{ENTER}')"
REM Запуск SFC command / Running SFC command
powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('SFC.exe /SCANNOW{ENTER}')"



