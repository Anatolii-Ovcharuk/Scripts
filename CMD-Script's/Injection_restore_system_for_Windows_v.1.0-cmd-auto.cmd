@echo off
REM Injection: Restore system for Windows. Made by Anatolii Ovcharuk. Version 1.0 for Windows - Update 08.08.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .bat file script for Windows, using CMD Console. Approximate completion time: 30 minutes. With restart system.
REM Notice for future: This script automated.

REM Информация в консоли / Information in console
echo Initializating...
echo Injection: Restore system for Windows. Made by Anatolii Ovcharuk. Version 1.0 for Windows - Update 08.08.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .bat file script for Windows, using CMD Console. Approximate completion time: 30 minutes. 
echo Attention! With restart system.
echo Notice for future: This script automated.
echo Press any key to continue.
pause
echo Starting process...

REM Операции в Windows CMD / Operation in Windows CMD

REM Запуск DISM command / Running DISM command
echo Running DISM command...
DISM.exe /Online /Cleanup-image /Restorehealth

REM Запуск SFC command / Running SFC command
echo Running SFC command...
SFC.exe /SCANNOW

REM Запуск Verifier / Running Verifier
echo Running Verifier...
verifier /query

REM Запуск Memory Diagnostic / Running Memory Diagnostic
echo Running Memory Diagnostic...
mdsched.exe

REM Перезагрузка Windows / Restart Windows
echo System will restart in 60 seconds...
timeout /t 10
shutdown -r -t 60
exit

