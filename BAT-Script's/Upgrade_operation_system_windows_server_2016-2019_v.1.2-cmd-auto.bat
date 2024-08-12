@echo off
REM Upgrade operation system Windows server 2016 - 2019. Made by Anatolii Ovcharuk. Version 1.2 for Windows - Update 12.08.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .bat file script for Windows, using CMD Console. Approximate completion time: 15 minutes.
REM Notice for future: This script automated. With restart system.
REM Upgrade including: Add Windows Photo Viewer; Add monitoring disk in manager; Add WLAN services; Add Briefcase.

REM Информация в консоли / Information in console
echo Upgrade operation system Windows server 2016 - 2019. Made by Anatolii Ovcharuk. Version 1.2 for Windows - Update 12.08.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .bat file script for Windows, using CMD Console. Approximate completion time: 15 minutes. With restart system.
echo Upgrade including: Add Windows Photo Viewer; Add monitoring disk in manager; Add WLAN services.
echo Notice for future: This script automated. With restart system.
echo Attention! With restart system.
echo Press any key to continue.
pause
echo Starting process...
timeout /t 1

REM Операции в Windows CMD / Operation in Windows CMD

REM Operation in Windows Powershell - Add Windows Photo Viewer;
echo Adding Windows Photo Viewer.
timeout /t 3
regsvr32 “C:\Program Files (x86)\Windows Photo Viewer\PhotoViewer.dll”
If ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll")){New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll" -ItemType RegistryKey -Force}
If ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell")){New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell" -ItemType RegistryKey -Force}
If ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open")){New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open" -ItemType RegistryKey -Force}
Set-ItemProperty -path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open" -Name "MuiVerb" -Type "String" -Value "@photoviewer.dll,-3043"
If ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\command")){New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\command" -ItemType RegistryKey -Force}
Set-ItemProperty -path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\command" -Name "(Default)" -Type "ExpandString" -Value "%SystemRoot%\System32\rundll32.exe `"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll`", ImageView_Fullscreen %1"
If ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\DropTarget")){New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\DropTarget" -ItemType RegistryKey -Force}
Set-ItemProperty -path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\DropTarget" -Name "Clsid" -Type "String" -Value "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
If ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print")){New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print" -ItemType RegistryKey -Force}
If ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\command")){New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\command" -ItemType RegistryKey -Force}
Set-ItemProperty -path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\command" -Name "(Default)" -Type "ExpandString" -Value "%SystemRoot%\System32\rundll32.exe `"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll`", ImageView_Fullscreen %1"
If ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\DropTarget")){New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\DropTarget" -ItemType RegistryKey -Force}
Set-ItemProperty -path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\DropTarget" -Name "Clsid" -Type "String" -Value "{60fd46de-f830-4894-a628-6fa81bc0190d}"
echo Windows Photo Viewer has been added.

REM Operation in Windows Powershell - Add monitoring disk in manager;
echo Adding monitoring disk in manager.
timeout /t 3
diskperf -y
echo Monitoring disk in manager has been added.

REM Operation in Windows Powershell - Add WLAN services;
echo Adding WLAN services.
timeout /t 3
Get-WindowsFeature *Wireless*
Install-WindowsFeature -Name Wireless-Networking
Set-Service WlanSvc –startuptype automatic –passthru
Start-Service WlanSvc –PassThru 
echo WLAN services has been added.

REM Operation in Windows Powershell - Add Briefcase;
echo Adding Briefcase to the registry...
timeout /t 3
reg add "HKEY_CLASSES_ROOT\Briefcase" /ve /d "Briefcase" /f
reg add "HKEY_CLASSES_ROOT\Briefcase" /v "InfoTip" /d "Contains files and folders that are synchronized between this computer and another." /f
reg add "HKEY_CLASSES_ROOT\Briefcase\CLSID" /ve /d "{85BBD920-42A0-1069-A2E4-08002B30309D}" /f
reg add "HKEY_CLASSES_ROOT\Briefcase\DefaultIcon" /ve /d "%SystemRoot%\\System32\\syncui.dll,0" /f
reg add "HKEY_CLASSES_ROOT\Briefcase\shell" /ve /d "update" /f
reg add "HKEY_CLASSES_ROOT\Briefcase\shell\open" /f
reg add "HKEY_CLASSES_ROOT\Briefcase\shell\open\command" /ve /d "explorer.exe %%1" /f
reg add "HKEY_CLASSES_ROOT\Briefcase\shell\update" /ve /d "Update All" /f
reg add "HKEY_CLASSES_ROOT\Briefcase\shell\update\command" /ve /d "syncui.dll,Briefcase_UpdateAll" /f
reg add "HKEY_CLASSES_ROOT\Folder\shellex\DragDropHandlers\Briefcase" /ve /d "{85BBD920-42A0-1069-A2E4-08002B30309D}" /f
echo Briefcase has been added to the registry.

REM Результат / Result
timeout /t 1
echo Upgrade system Complete.
timeout /t 1

REM Перезагрузка Windows / Restart Windows
echo System will restart in 60 seconds...
timeout /t 10
shutdown -r -t 60
echo Exit...
timeout /t 3
exit


