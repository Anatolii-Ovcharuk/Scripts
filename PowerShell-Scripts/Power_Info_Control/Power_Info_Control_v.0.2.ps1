# PowerShell Script: Power Info Control for Windows
# Information: Power Info Control for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 22.11.2024 / MIT License
# Profile on Github: https://github.com/Anatolii-Ovcharuk
# This script is written for Windows PowerShell.

Write-Host "Initializing..."
Write-Host "Information: Power Info Control for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 22.11.2024 / MIT License" -ForegroundColor Green -BackgroundColor Black
Write-Host "Profile on Github: https://github.com/Anatolii-Ovcharuk" -ForegroundColor Green -BackgroundColor Black
Write-Host "This script is written for Windows PowerShell." -ForegroundColor Green -BackgroundColor Black
Write-Host "Press any key to continue." -ForegroundColor Yellow
Read-Host

Write-Host "Starting process..." -ForegroundColor Red -BackgroundColor Black

# Operations in PowerShell
Write-Host "Starting to get total information..." -ForegroundColor Yellow
powercfg /query

Write-Host "Starting to get information about battery..." -ForegroundColor Yellow
# powercfg /batteryreport | Out-Null
powercfg /batteryreport
Write-Host "Battery report generated successfully. Check the default output location for the report." -ForegroundColor Green

Write-Host "Starting to get information about energy..." -ForegroundColor Yellow
# powercfg /energy | Out-Null
powercfg /energy
Write-Host "Energy report generated successfully. Check the default output location for the report." -ForegroundColor Green

Write-Host "Completed gathering all information." -ForegroundColor Green -BackgroundColor Black
Write-Host "Press any key to exit..." -ForegroundColor Yellow -BackgroundColor Black
Read-Host
