# Injection: Restore system for Windows. Made by Anatolii Ovcharuk. Version 0.5 for Windows - Update 01.08.2024 / MIT License
# Profile on Github: https://github.com/Anatolii-Ovcharuk
# This is a PowerShell script for Windows, using PowerShell Console or PowerShell ISE Console. Approximate completion time: 30 minutes.
# Notice for future: This script is automated. This is version for server.

# If not working, set in command: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process

# Options / Опции
Write-Host "Initializating..."
$delayInSeconds = 3 # Значение задержки в переменной (в секундах) / Delay for running command's (in seconds)

# Информация в консоли / Information in console
Write-Host "Injection: Restore system for Windows. Made by Anatolii Ovcharuk. Version 0.5 for Windows - Update 01.08.2024 | MIT License" -ForegroundColor Green -BackgroundColor Black
Write-Host "Profile on Github: https://github.com/Anatolii-Ovcharuk" -ForegroundColor Green -BackgroundColor Black
Write-Host "This is PowerShell script for Windows, using PowerShell Console or PowerShell ISE Console. Approximate completion time: 30 minutes." -ForegroundColor Yellow -BackgroundColor Black
Write-Host "Notice for future: This script is automated. This is version for server." -ForegroundColor Red -BackgroundColor Black

Write-Host "Starting process..." -ForegroundColor Green

# Операции в Windows Powershell Console / Operation in Windows Powershell Console

# Запуск DISM command / Running DISM command
Write-Host "Waiting for $delayInSeconds seconds before running DISM command..." -ForegroundColor Yellow
Start-Sleep -Seconds $delayInSeconds
Write-Host "Running DISM command..." -ForegroundColor Red
DISM.exe /Online /Cleanup-image /Restorehealth

# Запуск SFC command / Running SFC command
Write-Host "Waiting for $delayInSeconds seconds before running SFC command..." -ForegroundColor Yellow
Start-Sleep -Seconds $delayInSeconds
Write-Host "Running SFC command..." -ForegroundColor Red
SFC.exe /SCANNOW

# Результат / Result
Write-Host "Injection: Restore system for Windows - Complete." -ForegroundColor Green
Start-Sleep -Seconds $delayInSeconds

# Exit / Выход
Write-Host "Exit..."
Start-Sleep -Seconds $delayInSeconds
exit

# =========== =========== ===========  Ending script =========== =========== =========== 
# Thank's for using my script's... With respect's, Anatolii Ovcharuk.


