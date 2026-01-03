@echo off


REM Startup: MongoDB for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 10.01.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM This is .bat file script for Windows, using CMD Console.
REM Notice for future: This script automated. This is version for server.

echo Startup: MongoDB for Windows. Made by Anatolii Ovcharuk. Version 0.2 for Windows - Update 10.01.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo This is .bat file script for Windows, using CMD Console.
echo Notice for future: This script automated. This is version for server.

echo Initializating - Startup MongoDB...
net start MongoDB

echo Initializating - Retry to starting initializating MongoDB in 180 seconds (3 minutes)...
timeout /t 180
net start MongoDB

pause