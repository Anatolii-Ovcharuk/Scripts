# Control: Administrator Menu for Windows. Made by Anatolii Ovcharuk. Version 0.4 for Windows - Update 22.11.2024 / MIT License
# Profile on Github: https://github.com/Anatolii-Ovcharuk
# This is PowerShell script for Windows.

function Show-Menu {
    Clear-Host
    Write-Host "Control: Administrator Menu for Windows. Made by Anatolii Ovcharuk. Version 0.4 for Windows - Update 22.11.2024 / MIT License" -ForegroundColor Green -BackgroundColor Black
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
    Write-Host "11. Open Resource Monitor." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "12. Open Explorer." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "13. Open Configuration System." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "14. Open System Information." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "15. Open System Monitor." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "16. Open Clean Disk Tool." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "17. Open Reserve Copy Disk Tool." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "18. Open Console MMC." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "19. Open Remote Desktop." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "20. Open Antivirus Tool." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "21. Open Disk Management." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "22. Open Event Viewer." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "23. Open Group Policy Editor." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "24. Open Audio Settings." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "25. Open Task Scheduler." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "26. Open Network Settings." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "27. Open User Manager." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "28. Open Character Map." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "29. Open Calculator." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "30. Open On-Screen Keyboard." -ForegroundColor Yellow -BackgroundColor Black
    Write-Host "31. Open Information About OS." -ForegroundColor Yellow -BackgroundColor Black
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

# Define functions for each utility
function Start-Utility1 { Start-Process dxdiag }
function Start-Utility2 { Start-Process mdsched }
function Start-Utility3 { Start-Process services.msc }
function Start-Utility4 { Start-Process regedit }
function Start-Utility5 { Start-Process taskmgr }
function Start-Utility6 { Start-Process cmd -Verb RunAs }
function Start-Utility7 { Start-Process powershell }
function Start-Utility8 { Start-Process control }
function Start-Utility9 { Start-Process compmgmt.msc }
function Start-Utility10 { Start-Process devmgmt.msc }
function Start-Utility11 { Start-Process resmon }
function Start-Utility12 { Start-Process explorer }
function Start-Utility13 { Start-Process msconfig }
function Start-Utility14 { Start-Process msinfo32 }
function Start-Utility15 { Start-Process perfmon }
function Start-Utility16 { Start-Process cleanmgr }
function Start-Utility17 { Start-Process sdclt }
function Start-Utility18 { Start-Process mmc }
function Start-Utility19 { Start-Process mstsc }
function Start-Utility20 { Start-Process mrt }
function Start-Utility21 { Start-Process diskmgmt.msc }
function Start-Utility22 { Start-Process eventvwr }
function Start-Utility23 { Start-Process gpedit.msc }
function Start-Utility24 { Start-Process mmsys.cpl }
function Start-Utility25 { Start-Process taskschd.msc }
function Start-Utility26 { Start-Process ncpa.cpl }
function Start-Utility27 { Start-Process lusrmgr.msc }
function Start-Utility28 { Start-Process charmap }
function Start-Utility29 { Start-Process calc }
function Start-Utility30 { Start-Process osk }
function Start-Utility31 { Start-Process winver }

# Main Menu
do {
    Show-Menu
    $choice = Get-Choice "Set option (0-31):"

    switch ($choice) {
        "1" { Start-Utility1 }
        "2" { Start-Utility2 }
        "3" { Start-Utility3 }
        "4" { Start-Utility4 }
        "5" { Start-Utility5 }
        "6" { Start-Utility6 }
        "7" { Start-Utility7 }
        "8" { Start-Utility8 }
        "9" { Start-Utility9 }
        "10" { Start-Utility10 }
        "11" { Start-Utility11 }
        "12" { Start-Utility12 }
        "13" { Start-Utility13 }
        "14" { Start-Utility14 }
        "15" { Start-Utility15 }
        "16" { Start-Utility16 }
        "17" { Start-Utility17 }
        "18" { Start-Utility18 }
        "19" { Start-Utility19 }
        "20" { Start-Utility20 }
        "21" { Start-Utility21 }
        "22" { Start-Utility22 }
        "23" { Start-Utility23 }
        "24" { Start-Utility24 }
        "25" { Start-Utility25 }
        "26" { Start-Utility26 }
        "27" { Start-Utility27 }
        "28" { Start-Utility28 }
        "29" { Start-Utility29 }
        "30" { Start-Utility30 }
        "31" { Start-Utility31 }
        "0" { exit }
        default { Write-Host "Invalid choice, try again." -ForegroundColor Red }
    }
} while ($choice -ne "0")
