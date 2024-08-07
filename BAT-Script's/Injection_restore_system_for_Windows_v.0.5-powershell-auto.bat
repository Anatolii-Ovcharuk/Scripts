@echo off
REM Injection: Restore system for Windows. Made by Anatolii Ovcharuk. Version 0.5 for Windows - Update 08.08.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .bat file script for Windows, using Powershell Console. Approximate completion time: 30 minutes. With restart system.
REM Notice for future: This script automated.

echo Initializating...

REM Запуск Windows PowerShell / Running Windows PowerShell
REM Заметка: Явное указание пути к PowerShell - "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
timeout /t 2 >nul
start powershell
timeout /t 1 >nul

REM Информация в консоли / Information in console

REM Операции в Windows CMD / Operation in Windows CMD
REM Запуск DISM / Running DISM command
powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('DISM.exe /Online /Cleanup-image /Restorehealth{ENTER}')"
REM Запуск SFC command / Running SFC command
powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('SFC.exe /SCANNOW{ENTER}')"
REM Запуск Verifier / Running Verifier
powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('Verifier /query')"
REM Запуск Memory Diagnostic / Running Memory Diagnostic
powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('Mdsched{ENTER}{DOWN}{ENTER}{ENTER}')"
REM Перезагрузка Windows и выход / Restart Windows and exit
powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('shutdown -r -t 60')"
powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('exit{ENTER}')"

