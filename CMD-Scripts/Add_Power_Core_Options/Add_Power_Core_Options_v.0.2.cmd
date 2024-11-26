@echo off
REM Add Options: Power of Core for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 22.11.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .cmd file script for Windows, using CMD Console.


REM Информация в консоли / Information in console
echo Initializating...
echo Add Options: Power of Core  for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 22.11.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .cmd file script for Windows, using CMD Console.
echo Press any key to continue.
pause
echo Starting process...

REM Операции в Windows CMD / Operation in Windows CMD

echo 'Add Options - Processor Turbo boost on/off...'
@REM powercfg -attributes SUB_PROCESSOR be337238-0d82-4146-a960-4f3749d470c7 -ATTRIB_HIDE
@REM reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7" /v Attributes /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7" /v Attributes /t REG_DWORD /d 2

echo 'Add Options - Processor frequency...'
@REM powercfg -attributes SUB_PROCESSOR 75b0ae3f-bce0-45a7-8c89-c9611c25e101 -ATTRIB_HIDE
@REM reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e101" /v Attributes /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e101" /v Attributes /t REG_DWORD /d 2

echo 'Add Options - Maximum processor frequency...'
@REM powercfg -attributes SUB_PROCESSOR 75b0ae3f-bce0-45a7-8c89-c9611c25e100 -ATTRIB_HIDE
@REM reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v Attributes /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v Attributes /t REG_DWORD /d 2

echo 'Add Options - Maximum processor core...'
@REM powercfg -attributes SUB_PROCESSOR bc5038f7-23e0-4960-96da-33abaf5935ec -ATTRIB_HIDE
@REM reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\bc5038f7-23e0-4960-96da-33abaf5935ec" /v Attributes /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\bc5038f7-23e0-4960-96da-33abaf5935ec" /v Attributes /t REG_DWORD /d 2

echo 'Add Options - Minimum processor core...'
@REM powercfg -attributes SUB_PROCESSOR 0cc5b647-c1df-4637-891a-dec35c318583 -ATTRIB_HIDE
@REM reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v Attributes /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v Attributes /t REG_DWORD /d 2

echo 'Add Options - Priority power usage for processor...'
@REM powercfg -attributes SUB_PROCESSOR 465e1f50-b610-473a-ab58-00d1077dc418 -ATTRIB_HIDE
@REM reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\465e1f50-b610-473a-ab58-00d1077dc418" /v Attributes /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\465e1f50-b610-473a-ab58-00d1077dc418" /v Attributes /t REG_DWORD /d 2

echo 'Add Options - Step for disabled cores...'
@REM powercfg -attributes SUB_PROCESSOR 9ed9228b-40a6-4b30-91bc-89a3ff8b0d02 -ATTRIB_HIDE
@REM reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\9ed9228b-40a6-4b30-91bc-89a3ff8b0d02" /v Attributes /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\9ed9228b-40a6-4b30-91bc-89a3ff8b0d02" /v Attributes /t REG_DWORD /d 2

echo 'Add Options - Step for enabled cores...'
@REM powercfg -attributes SUB_PROCESSOR bc5038f7-23e0-4960-96da-33abaf5935ec -ATTRIB_HIDE
@REM reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\bc5038f7-23e0-4960-96da-33abaf5935ec" /v Attributes /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\bc5038f7-23e0-4960-96da-33abaf5935ec" /v Attributes /t REG_DWORD /d 2

echo 'Add Options - Frequency of change power on processor...'
@REM powercfg -attributes SUB_PROCESSOR d8edeb9b-95cf-4f95-a73c-b061973693c8 -ATTRIB_HIDE
@REM reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\d8edeb9b-95cf-4f95-a73c-b061973693c8" /v Attributes /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\d8edeb9b-95cf-4f95-a73c-b061973693c8" /v Attributes /t REG_DWORD /d 2

echo 'Ready.'
echo Console will be close in 10 seconds...
timeout /t 10
exit


