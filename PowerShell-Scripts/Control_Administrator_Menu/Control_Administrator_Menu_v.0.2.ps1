# Control: Administrator Menu for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 22.09.2024 / MIT License
# Profile on Github: https://github.com/Anatolii-Ovcharuk
# This is PowerShell script for Windows.

function Show-Menu {
    Clear-Host
    Write-Host "Control: Administrator Menu for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 22.09.2024 / MIT License" -ForegroundColor Green -BackgroundColor Black
    Write-Host "Profile on Github: https://github.com/Anatolii-Ovcharuk" -ForegroundColor Green -BackgroundColor Black
    Write-Host "This is PowerShell script for Windows." -ForegroundColor Green -BackgroundColor Black
    Write-Host "================================" -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "  Choice option:" -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "================================" -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "1. Open DirectX Diagnostic." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "2. Open Memory Diagnostic." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "3. Open Services." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "4. Open Register." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "5. Open Task Manager." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "6. Open CMD." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "7. Open PowerShell." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "8. Open Control Panel." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "9. Open Computer Management." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "10. Open Device Manager." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "0. Exit." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "================================" -ForegroundColor Yellow -BackgroundColor Black
}

function Get-Choice {
    param (
        [string]$message
    )
    Write-Host
    $choice = Read-Host $message
    return $choice
}

function Start-AdminCMD {
    Start-Process cmd -Verb RunAs
}

function Start-DirectX {
    Start-Process dxdiag
}

function Start-MemoryDiagnostic {
    Start-Process mdsched
}

function Start-Services {
    Start-Process services.msc
}

function Start-Register {
    Start-Process regedit
}

function Start-TaskManager {
    Start-Process taskmgr
}

function Start-PowerShell {
    Start-Process powershell
}

function Start-ControlPanel {
    Start-Process control
}

function Start-ComputerManagement {
    Start-Process compmgmt.msc
}

function Start-DeviceManager {
    Start-Process devmgmt.msc
}

# Главное меню
do {
    Show-Menu
    $choice = Get-Choice "Set option (0-10):"

    switch ($choice) {
        "1" { Start-DirectX }
        "2" { Start-MemoryDiagnostic }
        "3" { Start-Services }
        "4" { Start-Register }
        "5" { Start-TaskManager }
        "6" { Start-AdminCMD }
        "7" { Start-PowerShell }
        "8" { Start-ControlPanel }
        "9" { Start-ComputerManagement }
        "10" { Start-DeviceManager }
        "0" { exit }
        default { Write-Host "Invalid choice, try again." -ForegroundColor Red }
    }
} while ($choice -ne "0")
