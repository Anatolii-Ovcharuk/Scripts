@echo off
REM Injection: Restore system for Windows. Made by Anatolii Ovcharuk. Version 1.0 for Windows - Update 08.08.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .bat file script for Windows, using CMD Console. Approximate completion time: 30 minutes. With restart system.
REM Notice for future: This script non-automated and have several steps. After complete each step, Press any key to continue next step.

REM Информация в консоли / Information in console
echo Initializating...
echo Injection: Restore system for Windows. Made by Anatolii Ovcharuk. Version 1.0 for Windows - Update 08.08.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .bat file script for Windows, using CMD Console. Approximate completion time: 30 minutes.
echo Attention! With restart system.
echo Notice for future: This script non-automated and have several steps. After complete each step, Press any key to continue next step.
echo Press any key to continue.
pause
echo Starting process...

REM Операции в Windows CMD / Operation in Windows CMD
echo 'Running DISM command...'
DISM.exe /Online /Cleanup-image /Restorehealth
echo 'Press any key to continue...'
pause
echo 'Running SFC command...'
SFC.exe /SCANNOW
echo 'Press any key to continue...'
pause
echo 'Running Verifier...'
Verifier /query
echo 'Press any key to continue...'
pause
echo 'Running Memory Diagnostic...'
Mdsched
echo 'Press any key to restart and exit...'
pause
echo System will restart in 60 seconds...
timeout /t 10
shutdown -r -t 60
exit

