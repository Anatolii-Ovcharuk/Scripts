@echo off
REM Control: Administrator Menu for Windows. Made by Anatolii Ovcharuk. Version 0.4 for Windows - Update 22.11.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .cmd file script for Windows, using CMD Console.


REM Меню в консоли / Menu in console
:menu
cls
REM Информация в консоли / Information in console
echo Control: Administrator Menu for Windows. Made by Anatolii Ovcharuk. Version 0.4 for Windows - Update 22.11.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .cmd file script for Windows, using CMD Console.
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
echo 11. Open Resource monitor.
echo 12. Open Explorer.
echo 13. Open Configuration system.
echo 14. Open System information.
echo 15. Open System Monitor.
echo 16. Open Clean Disk tool.
echo 17. Open Reserve Copy Disk tool.
echo 18. Open Console MMC.
echo 19. Open Remote Desktop.
echo 20. Open Antivirus tool.
echo 21. Open Disk Managment.
echo 22. Open Event Tool.
echo 23. Open Redactor Group Local Politics.
echo 24. Open Audio Settings.
echo 25. Open Task Manager.
echo 26. Open Network Settings.
echo 27. Open Users Manager.
echo 28. Open Symbols Manager.
echo 29. Open Calculator.
echo 30. Open Screen Keyboard.
echo 31. Open Information about OS.
echo 0. Exit.
echo ===============================
set /p choice=Set option (0-31): 

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
if %choice%==11 goto resmon
if %choice%==12 goto explorer
if %choice%==13 goto msconfig
if %choice%==14 goto msinfo32
if %choice%==15 goto perfmon
if %choice%==16 goto cleanmgr
if %choice%==17 goto sdclt
if %choice%==18 goto mmc
if %choice%==19 goto mstsc
if %choice%==20 goto mrt
if %choice%==21 goto diskmgmt
if %choice%==22 goto eventvwr
if %choice%==23 goto gpedit 
if %choice%==24 goto mmsys
if %choice%==25 goto taskschd
if %choice%==26 goto ncpa
if %choice%==27 goto lusrmgr
if %choice%==28 goto charmap
if %choice%==29 goto calc
if %choice%==30 goto osk
if %choice%==31 goto winver
if %choice%==0 goto exit 

:dxdiag
start dxdiag.exe
goto menu

:memorydiagnostic
mdsched
goto menu

:services
start services.msc
goto menu

:regedit
start regedit.exe
goto menu

:taskmanager
start taskmgr.exe
goto menu

:admincmd
powershell -Command "Start-Process cmd -Verb RunAs"
goto menu

:powershell
start powershell
goto menu

:controlpanel
start control.exe
goto menu

:computermanagement
start compmgmt.msc
goto menu

:devicemanager
start devmgmt.msc
goto menu

:resmon
start resmon.exe
goto menu

:explorer
start explorer.exe
goto menu

:msconfig
start msconfig
goto menu

:msinfo32
start msinfo32.exe
goto menu

:perfmon
start perfmon.exe
goto menu

:cleanmgr
start cleanmgr.exe
goto menu

:sdclt
start sdclt.exe
goto menu

:mmc
start mmc.exe
goto menu

:mstsc
start mstsc.exe
goto menu

:mrt
start mrt.exe
goto menu

:diskmgmt
start diskmgmt.msc
goto menu

:eventvwr
start eventvwr.msc
goto menu

:gpedit
start gpedit.msc
goto menu

:mmsys
start mmsys.cpl
goto menu

:taskschd
start taskschd.msc
goto menu

:ncpa
start ncpa.cpl
goto menu

:lusrmgr
start lusrmgr.msc
goto menu

:charmap
start charmap.exe
goto menu

:calc
start calc.exe
goto menu

:osk
start osk.exe
goto menu

:winver
start winver.exe
goto menu

:exit
exit

