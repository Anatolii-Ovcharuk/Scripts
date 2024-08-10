# Injection: Restore system for Windows. Made by Anatolii Ovcharuk. Version 1.0 for Windows - Update 10.08.2024 / MIT License
# Profile on Github: https://github.com/Anatolii-Ovcharuk
# This is a PowerShell script for Windows, using PowerShell Console or PowerShell ISE Console. Approximate completion time: 30 minutes.
# Notice for future: This script is automated. With restart system.

# If not working, set in command: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process

# Options / Опции
Write-Host "Initializating..."
$delayInSeconds = 3 # Значение задержки в переменной (в секундах) / Delay for running command's (in seconds)
$timeToRestart = 60 # Пауза перед началом рестарта системы (в секундах) / Pause before starting restart system (in seconds)

# Информация в консоли / Information in console
Write-Host "Injection: Restore system for Windows. Made by Anatolii Ovcharuk. Version 1.0 for Windows - Update 10.08.2024 | MIT License" -ForegroundColor Green -BackgroundColor Black
Write-Host "Profile on Github: https://github.com/Anatolii-Ovcharuk" -ForegroundColor Green -BackgroundColor Black
Write-Host "This is PowerShell script for Windows, using PowerShell Console or PowerShell ISE Console. Approximate completion time: 30 minutes." -ForegroundColor Yellow -BackgroundColor Black
Write-Host "Notice for future: This script is automated. With restart system." -ForegroundColor Red -BackgroundColor Black

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

# Запуск Verifier / Running Verifier
Write-Host "Waiting for $delayInSeconds seconds before running Verifier..." -ForegroundColor Yellow
Start-Sleep -Seconds $delayInSeconds
Write-Host "Running Verifier..." -ForegroundColor Red
verifier.exe /query

# Запуск Memory Diagnostic / Running Memory Diagnostic
Write-Host "Waiting for $delayInSeconds seconds before running Memory Diagnostic..." -ForegroundColor Yellow
Start-Sleep -Seconds $delayInSeconds
Write-Host "Running Memory Diagnostic..." -ForegroundColor Red
Write-Host "Для продолжения работы необходимо будет перезагрузить систему и выполнить проверку памяти." -ForegroundColor Red
mdsched.exe

$wshell = New-Object -ComObject wscript.shell
$wshell.AppActivate('mdsched.exe')
Start-Sleep -Seconds 2
$wshell.SendKeys("{DOWN}")
Start-Sleep -Seconds 2
$wshell.SendKeys("{ENTER}")

# Результат / Result
Write-Host "Injection: Restore system for Windows - Complete." -ForegroundColor Green
Start-Sleep -Seconds $delayInSeconds

# Перезагрузка Windows / Restart Windows
Write-Host "Warning! Restart system and exit..." -ForegroundColor Yellow
Start-Sleep -Seconds $delayInSeconds
# Write-Host "System will restart in 60 seconds..." -ForegroundColor Red
Write-Host "System will restart in $timeToRestart seconds..." -ForegroundColor Red
Start-Sleep -Seconds 3
# shutdown.exe -r -t 60
shutdown.exe -r -t $timeToRestart
Write-Host "Exit..."
Start-Sleep -Seconds $delayInSeconds
exit

# =========== =========== ===========  Ending script =========== =========== =========== 
# Thank's for using my script's... With respect's, Anatolii Ovcharuk.





# # Injection: Restore system for Windows. Made by Anatolii Ovcharuk. Version 1.0 for Windows - Update 10.08.2024 / MIT License
# # Profile on Github: https://github.com/Anatolii-Ovcharuk
# # This is .bat file script for Windows, using Powershell Console or Powershell ISE Console. Approximate completion time: 30 minutes.
# # Notice for future: This script automated. With restart system.

# # If not working, set in command: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process

# # Информация в консоли / Information in console
# echo "Initializating..."
# Write-Host "Injection: Restore system for Windows. Made by Anatolii Ovcharuk. Version 1.0 for Windows - Update 10.08.2024 | MIT License" -ForegroundColor Green -BackgroundColor Black
# Write-Host "Profile on Github: https://github.com/Anatolii-Ovcharuk" -ForegroundColor Green -BackgroundColor Black
# Write-Host "This is PowerShell script for Windows, using Powershell Console or Powershell ISE Console. Approximate completion time: 30 minutes." -ForegroundColor Yellow -BackgroundColor Black
# Write-Host "Notice for future: This script automated. With restart system." -ForegroundColor Red -BackgroundColor Black

# # Write-Host "Press any key to continue..." -ForegroundColor Yellow
# # $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

# Write-Host "Starting process..."  -ForegroundColor Green

# # Операции в Windows Powershell Console / Operation in Windows Powershell Console

# # Запуск DISM command / Running DISM command
# Write-Host "Waiting for 10 seconds before running DISM command..." -ForegroundColor Yellow
# Start-Sleep -Seconds 10
# Write-Host "Running DISM command..." -ForegroundColor Red
# # Start-Process -FilePath "DISM.exe" -ArgumentList "/Online /Cleanup-image /Restorehealth" -Wait
# DISM.exe /Online /Cleanup-image /Restorehealth

# # Запуск SFC command / Running SFC command
# Write-Host "Waiting for 10 seconds before running SFC command..." -ForegroundColor Yellow
# Start-Sleep -Seconds 10
# Write-Host "Running SFC command..." -ForegroundColor Red
# # Start-Process -FilePath "SFC.exe" -ArgumentList "/SCANNOW" -Wait
# SFC.exe /SCANNOW

# # Запуск Verifier / Running Verifier
# Write-Host "Waiting for 10 seconds before running Verifier..." -ForegroundColor Yellow
# Start-Sleep -Seconds 10
# Write-Host "Running Verifier..." -ForegroundColor Red
# # Start-Process -FilePath "verifier.exe" -ArgumentList "/query" -Wait
# verifier.exe /query

# # Запуск Memory Diagnostic / Running Memory Diagnostic
# Write-Host "Waiting for 10 seconds before running Memory Diagnostic..." -ForegroundColor Yellow
# Start-Sleep -Seconds 10
# Write-Host "Running Memory Diagnostic..." -ForegroundColor Red
# Write-Host "Для продолжения работы необходимо будет перезагрузить систему и выполнить проверку памяти." -ForegroundColor Red
# # Write-Host "Press any key to continue..." -ForegroundColor Yellow
# # $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
# # Start-Process -FilePath "mdsched.exe"
# mdsched.exe
# $wshell = New-Object -ComObject wscript.shell;
# $wshell.AppActivate('mdsched.exe')
# Start-Sleep -Seconds 2
# $wshell.SendKeys("{DOWN}")
# Start-Sleep -Seconds 2
# $wshell.SendKeys("{ENTER}")

# # Перезагрузка Windows / Restart Windows
# Write-Host "System will restart in 60 seconds..." -ForegroundColor Red
# Start-Sleep -Seconds 3
# shutdown.exe -r -t 60
# Write-Host "Exit..."
# Start-Sleep -Seconds 10
# exit


