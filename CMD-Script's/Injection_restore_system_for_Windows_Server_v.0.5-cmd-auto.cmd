@echo off
REM Injection: Restore system for Windows. Made by Anatolii Ovcharuk. Version 0.5 for Windows - Update 08.08.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .bat file script for Windows, using CMD Console. Approximate completion time: 30 minutes.
REM Notice for future: This script automated. This is version for server.

echo Initializating...

REM Информация в консоли / Information in console
echo Injection: Restore system for Windows. Made by Anatolii Ovcharuk. Version 0.5 for Windows - Update 08.08.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .cmd file script for Windows, using CMD Console. Approximate completion time: 30 minutes. 
echo Notice for future: This script automated. This is version for server.

REM Операции в Windows CMD / Operation in Windows CMD
timeout /t 1
echo Starting process...
timeout /t 3

REM Запуск DISM command / Running DISM command
echo Running DISM command...
timeout /t 3
DISM.exe /Online /Cleanup-image /Restorehealth
echo DISM command is completed.
timeout /t 3

REM Запуск SFC command / Running SFC command
echo Running SFC command...
timeout /t 3
SFC.exe /SCANNOW
echo SFC command is completed.
timeout /t 3

REM Exit / Выход
echo Waiting for 15 seconds before exit...
timeout /t 15
exit


