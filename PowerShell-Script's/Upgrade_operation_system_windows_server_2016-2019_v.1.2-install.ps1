# Upgrade operation system Windows server 2016 - 2019. Made by Anatolii Ovcharuk. Version 1.2 for Windows - Update 12.08.2024 / MIT License
# Profile on Github: https://github.com/Anatolii-Ovcharuk
# This is PowerShell file script for Windows, using PowerShell Console or PowerShell ISE Console. Approximate completion time: 15 minutes.
# Upgrade including: Add Windows Photo Viewer; Add monitoring disk in manager; Add WLAN services; Add Briefcase.
# Notice for future: This is script with options. With restart system.

# If not working, set in command: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process

# Define the function for prompting Yes/No questions
function PromptYesNo($message) {
    while ($true) {
        $response = Read-Host "$message [Y/N]"
        switch ($response.ToUpper()) {
            "Y" { return $true }
            "N" { return $false }
            default { Write-Host "Please enter Y or N." }
        }
    }
}

# Options / Опции
Write-Host "Initializating..."
$delayInSeconds = 3 # Значение задержки в переменной (в секундах) / Delay for running command's (in seconds)
$timeToRestart = 60 # Пауза перед началом рестарта системы (в секундах) / Pause before starting restart system (in seconds)

# Информация в консоли / Information in console
Write-Host "Upgrade operation system Windows server 2016 - 2019. Made by Anatolii Ovcharuk. Version 1.2 for Windows - Update 12.08.2024 / MIT License" -ForegroundColor Green -BackgroundColor Black
Write-Host "Profile on Github: https://github.com/Anatolii-Ovcharuk" -ForegroundColor Green -BackgroundColor Black
Write-Host "This is PowerShell file script for Windows, using PowerShell Console or PowerShell ISE Console. Approximate completion time: 15 minutes." -ForegroundColor Yellow -BackgroundColor Black
Write-Host "Upgrade including: Add Windows Photo Viewer; Add monitoring disk in manager; Add WLAN services." -ForegroundColor Yellow -BackgroundColor Black
Write-Host "Notice for future: This is script with options. With restart system." -ForegroundColor Red -BackgroundColor Black

Start-Sleep -Seconds $delayInSeconds
Write-Host "Starting process..." -ForegroundColor Green
Start-Sleep -Seconds $delayInSeconds

# Операции в Windows Powershell Console / Operation in Windows Powershell Console

# Operation in Windows Powershell - Add Windows Photo Viewer;
if (PromptYesNo "Do you want to add Windows Photo Viewer?") {
    # Code to add Windows Photo Viewer
    Write-Host "Waiting for $delayInSeconds seconds before running - Add Windows Photo Viewer..." -ForegroundColor Red 
    Start-Sleep -Seconds $delayInSeconds
    regsvr32 "C:\Program Files (x86)\Windows Photo Viewer\PhotoViewer.dll"
    If ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll")) { New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll" -ItemType RegistryKey -Force }
    If ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell")) { New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell" -ItemType RegistryKey -Force }
    If ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open")) { New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open" -ItemType RegistryKey -Force }
    Set-ItemProperty -path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open" -Name "MuiVerb" -Type "String" -Value "@photoviewer.dll,-3043"
    If ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\command")) { New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\command" -ItemType RegistryKey -Force }
    Set-ItemProperty -path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\command" -Name "(Default)" -Type "ExpandString" -Value "%SystemRoot%\System32\rundll32.exe `"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll`", ImageView_Fullscreen %1"
    If ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\DropTarget")) { New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\DropTarget" -ItemType RegistryKey -Force }
    Set-ItemProperty -path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\DropTarget" -Name "Clsid" -Type "String" -Value "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
    If ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print")) { New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print" -ItemType RegistryKey -Force }
    If ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\command")) { New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\command" -ItemType RegistryKey -Force }
    Set-ItemProperty -path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\command" -Name "(Default)" -Type "ExpandString" -Value "%SystemRoot%\System32\rundll32.exe `"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll`", ImageView_Fullscreen %1"
    If ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\DropTarget")) { New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\DropTarget" -ItemType RegistryKey -Force }
    Set-ItemProperty -path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\DropTarget" -Name "Clsid" -Type "String" -Value "{60fd46de-f830-4894-a628-6fa81bc0190d}"
    Write-Host "Windows Photo Viewer has been added." -ForegroundColor Green
}
else {
    Write-Host "Skipping by user of installing Windows Photo Viewer." -ForegroundColor Yellow
}

# Operation in Windows Powershell - Add monitoring disk in manager;
if (PromptYesNo "Do you want to add monitoring disk in manager?") {
    # Code to add monitoring disk in manager
    Write-Host "Waiting for $delayInSeconds seconds before running - Add monitoring disk in manager..." -ForegroundColor Red 
    Start-Sleep -Seconds $delayInSeconds
    diskperf -y
    Write-Host "Monitoring disk in manager has been added." -ForegroundColor Green
}
else {
    Write-Host "Skipping by user of installing monitoring disk in manager." -ForegroundColor Yellow
}


# Operation in Windows Powershell - Add WLAN services;
if (PromptYesNo "Do you want to add WLAN services?") {
    # Code to add WLAN services
    Write-Host "Waiting for $delayInSeconds seconds before running - Add WLAN services..." -ForegroundColor Red 
    Start-Sleep -Seconds $delayInSeconds
    Get-WindowsFeature *Wireless*
    Install-WindowsFeature -Name Wireless-Networking
    # Set-Service WlanSvc –startuptype automatic –passthru
    Set-Service -Name WlanSvc -StartupType Automatic -PassThru
    # Start-Service WlanSvc –PassThru 
    Start-Service -Name WlanSvc -PassThru
    Write-Host "WLAN services has been added." -ForegroundColor Green 
}
else {
    Write-Host "Skipping by user of installing WLAN services." -ForegroundColor Yellow
}


# Operation in Windows Powershell - Add Briefcase;
if (PromptYesNo "Do you want to add Briefcase to the registry?") {
    # Code to add Briefcase to the registry
    Write-Host "Waiting for $delayInSeconds seconds before running - Adding Briefcase to the registry..." -ForegroundColor Red 
    Start-Sleep -Seconds $delayInSeconds

    New-Item -Path "Registry::HKEY_CLASSES_ROOT\Briefcase" -Force
    Set-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\Briefcase" -Name "(default)" -Value "Briefcase"
    Set-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\Briefcase" -Name "InfoTip" -Value "Contains files and folders that are synchronized between this computer and another."

    New-Item -Path "Registry::HKEY_CLASSES_ROOT\Briefcase\CLSID" -Force
    Set-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\Briefcase\CLSID" -Name "(default)" -Value "{85BBD920-42A0-1069-A2E4-08002B30309D}"

    New-Item -Path "Registry::HKEY_CLASSES_ROOT\Briefcase\DefaultIcon" -Force
    Set-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\Briefcase\DefaultIcon" -Name "(default)" -Value "%SystemRoot%\System32\syncui.dll,0"

    New-Item -Path "Registry::HKEY_CLASSES_ROOT\Briefcase\shell" -Force
    Set-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\Briefcase\shell" -Name "(default)" -Value "update"

    New-Item -Path "Registry::HKEY_CLASSES_ROOT\Briefcase\shell\open" -Force
    New-Item -Path "Registry::HKEY_CLASSES_ROOT\Briefcase\shell\open\command" -Force
    Set-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\Briefcase\shell\open\command" -Name "(default)" -Value "explorer.exe %1"

    New-Item -Path "Registry::HKEY_CLASSES_ROOT\Briefcase\shell\update" -Force
    Set-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\Briefcase\shell\update" -Name "(default)" -Value "Update All"
    New-Item -Path "Registry::HKEY_CLASSES_ROOT\Briefcase\shell\update\command" -Force
    Set-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\Briefcase\shell\update\command" -Name "(default)" -Value "syncui.dll,Briefcase_UpdateAll"

    New-Item -Path "Registry::HKEY_CLASSES_ROOT\Folder\shellex\DragDropHandlers\Briefcase" -Force
    Set-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\Folder\shellex\DragDropHandlers\Briefcase" -Name "(default)" -Value "{85BBD920-42A0-1069-A2E4-08002B30309D}"

    Write-Host "Briefcase has been added to the registry." -ForegroundColor Green
}
else {
    Write-Host "Skipping by user of installing Briefcase." -ForegroundColor Yellow
}


# Результат / Result
Write-Host "Upgrade operation system Windows - Complete." -ForegroundColor Green
Start-Sleep -Seconds $delayInSeconds

# Перезагрузка Windows / Restart Windows
if (PromptYesNo "Do you want to now restart system?") {
    # Code to restart system now
    Write-Host "Warning! Restart system and exit..." -ForegroundColor Yellow
    Start-Sleep -Seconds $delayInSeconds
    # Write-Host "System will restart in 60 seconds..." -ForegroundColor Red
    Write-Host "System will restart in $timeToRestart seconds..." -ForegroundColor Red
    Start-Sleep -Seconds 1
    # shutdown.exe -r -t 60
    shutdown.exe -r -t $timeToRestart
}
else {
    Write-Host "Skipping by user to restart system now." -ForegroundColor Yellow
    Write-Host "Notice for future: You must restart system..." -ForegroundColor Red
}

Write-Host "Exit..."
Start-Sleep -Seconds $delayInSeconds
exit


# =========== =========== ===========  Ending script =========== =========== =========== 
# Thank's for using my script's... With respect's, Anatolii Ovcharuk.
