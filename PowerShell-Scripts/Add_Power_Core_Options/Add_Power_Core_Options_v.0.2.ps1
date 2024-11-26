# Add Options: Power of Core for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 22.11.2024 / MIT License
# Profile on Github: https://github.com/Anatolii-Ovcharuk
# This is a PowerShell script for Windows.


# Информация в консоли / Information in console
Write-Output "Initializing..."
Write-Output "Add Options: Power of Core for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 22.11.2024 / MIT License" -ForegroundColor Green -BackgroundColor Black
Write-Output "Profile on Github: https://github.com/Anatolii-Ovcharuk" -ForegroundColor Green -BackgroundColor Black
Write-Output "This is a PowerShell script for Windows." -ForegroundColor Green -BackgroundColor Black
Write-Output "Starting process..." -ForegroundColor Yellow -BackgroundColor Black

# Operations in Windows PowerShell
Write-Output "'Add Options - Processor Turbo boost on/off...'" -ForegroundColor Yellow
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7" -Name Attributes -Value 2

Write-Output "'Add Options - Processor frequency...'" -ForegroundColor Yellow
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e101" -Name Attributes -Value 2

Write-Output "'Add Options - Maximum processor frequency...'" -ForegroundColor Yellow
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" -Name Attributes -Value 2

Write-Output "'Add Options - Maximum processor core...'" -ForegroundColor Yellow
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\bc5038f7-23e0-4960-96da-33abaf5935ec" -Name Attributes -Value 2

Write-Output "'Add Options - Minimum processor core...'" -ForegroundColor Yellow
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" -Name Attributes -Value 2

Write-Output "'Add Options - Priority power usage for processor...'" -ForegroundColor Yellow
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\465e1f50-b610-473a-ab58-00d1077dc418" -Name Attributes -Value 2

Write-Output "'Add Options - Step for disabled cores...'" -ForegroundColor Yellow
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\9ed9228b-40a6-4b30-91bc-89a3ff8b0d02" -Name Attributes -Value 2

Write-Output "'Add Options - Step for enabled cores...'" -ForegroundColor Yellow
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\bc5038f7-23e0-4960-96da-33abaf5935ec" -Name Attributes -Value 2

Write-Output "'Add Options - Frequency of change power on processor...'" -ForegroundColor Yellow
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\d8edeb9b-95cf-4f95-a73c-b061973693c8" -Name Attributes -Value 2

Write-Output "'Ready.'"  -ForegroundColor Green
Write-Output "Console will close in 10 seconds..."  -ForegroundColor Red
Start-Sleep -Seconds 10

