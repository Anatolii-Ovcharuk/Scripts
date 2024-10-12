@echo off
REM Control: Administrator Menu for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 22.09.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .bat file script for Windows, using CMD Console.


REM Меню в консоли / Menu in console
:menu
cls
REM Информация в консоли / Information in console
echo Control: Administrator Menu for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 22.09.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .bat file script for Windows, using CMD Console.
echo ===============================
echo   Choice option:
echo ===============================
echo 1. Open DirectX Diagnostic.
echo 2. Open Memory Diagnostic.
echo 3. Open Services.
echo 4. Open Register.
echo 5. Open Task Manager.
echo 6. Open CMD.
echo 7. Open PowerShell.
echo 8. Open Panel Control.
echo 9. Open Computer Management.
echo 10. Open Devices.
echo 0. Exit.
echo ===============================
set /p choice=Set option (0-10): 

if %choice%==1 goto dxdiag
if %choice%==2 goto memorydiagnostic
if %choice%==3 goto services
if %choice%==4 goto regedit
if %choice%==5 goto taskmanager
if %choice%==6 goto admincmd
if %choice%==7 goto powershell
if %choice%==8 goto controlpanel
if %choice%==9 goto computermanagement
if %choice%==10 goto devicemanager
if %choice%==0 goto exit

:dxdiag
start dxdiag
goto menu

:memorydiagnostic
mdsched
goto menu

:services
start services.msc
goto menu

:regedit
start regedit
goto menu

:taskmanager
start taskmgr
goto menu

:admincmd
powershell -Command "Start-Process cmd -Verb RunAs"
goto menu

:powershell
start powershell
goto menu

:controlpanel
start control
goto menu

:computermanagement
start compmgmt.msc
goto menu

:devicemanager
start devmgmt.msc
goto menu

:exit
exit
