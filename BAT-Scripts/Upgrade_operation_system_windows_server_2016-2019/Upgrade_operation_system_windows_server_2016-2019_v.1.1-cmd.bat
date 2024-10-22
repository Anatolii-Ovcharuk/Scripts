@echo off
REM Upgrade operation system Windows server 2016 - 2019. Made by Anatolii Ovcharuk. Version 1.1 for Windows - Update 08.08.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .bat file script for Windows, using CMD Console. Approximate completion time: 15 minutes. With restart system.
REM Notice for future: This script non-automated and have several steps. After complete each step, Press any key to continue next step.
REM Upgrade including: Add Windows Photo Viewer; Add monitoring disk in manager; Add WLAN services.

REM Информация в консоли / Information in console
echo Upgrade operation system Windows server 2016 - 2019. Made by Anatolii Ovcharuk. Version 1.1 for Windows - Update 08.08.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .bat file script for Windows, using CMD Console. Approximate completion time: 15 minutes. With restart system.
echo Upgrade including: Add Windows Photo Viewer; Add monitoring disk in manager; Add WLAN services.
echo Notice for future: This script non-automated and have several steps. After complete each step, Press any key to continue next step.
echo Attention! With restart system.
echo Press any key to continue.
pause
echo Starting process...

REM Операции в Windows CMD / Operation in Windows CMD
REM Operation in Windows Powershell - Add Windows Photo Viewer;
echo Add Windows Photo Viewer.
echo 'Press any key to continue...'
pause
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
REM Operation in Windows Powershell - Add monitoring disk in manager;
echo Add monitoring disk in manager.
echo 'Press any key to continue...'
pause
diskperf -y
REM Operation in Windows Powershell - Add WLAN services;
echo Add WLAN services.
echo 'Press any key to continue...'
pause
Get-WindowsFeature *Wireless*
Install-WindowsFeature -Name Wireless-Networking
Set-Service WlanSvc –startuptype automatic –passthru
Start-Service WlanSvc –PassThru 

REM Результат / Result
echo Upgrade system Complete.

REM Перезагрузка Windows / Restart Windows
echo 'Press any key to restart and exit...'
pause
echo System will restart in 60 seconds...
timeout /t 10
shutdown -r -t 60
exit
