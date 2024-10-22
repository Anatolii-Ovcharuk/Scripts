@echo off

REM Auto-start: Auto-start VHD on Server and Desktop for Windows. Made by Anatolii Ovcharuk. Version 0.1 for Windows - Update 22.10.2024 / MIT License
REM Profile on Github: https://github.com/Anatolii-Ovcharuk
REM Notice for future: This is version for server and desktop. 

echo Auto-start: Auto-start VHD on Server and Desktop for Windows. Made by Anatolii Ovcharuk. Version 0.1 for Windows - Update 22.10.2024 / MIT License
echo Profile on Github: https://github.com/Anatolii-Ovcharuk
echo Notice for future: This is version for server and desktop.

REM Go to the directory where the bat file is located / Перейти в директорию, где находится bat файл
cd /d "%~dp0"  

echo Initialization...
REM OPTIONS
REM Set name disk here. Default - Disk-64Mb
set nameDisk=Disk-64Mb
REM Set format disk here. Default - .vhd
set formatDisk=.vhd
REM Set destination folder with disk here. Default - %~dp0 (That's mean current location with this script).
set folderDisk=%~dp0

echo Run Virtual Hard Disk (VHD)...

echo Open Disk: %nameDisk%%formatDisk% on way: %folderDisk%

REM ---------------------------------------------------------------------------------------------------------------
REM This other way to open VHD
REM powershell -Command "Mount-DiskImage -ImagePath '%~dp0%nameDisk%.vhd'"
REM powershell -Command "Mount-DiskImage -ImagePath '%folderDisk%%nameDisk%%formatDisk%'"

REM echo select vdisk file="%~dp0%nameDisk%.vhd" - Setting only name disk in options, with current location folder, vhd format. Pipe method to open.
REM echo select vdisk file="%folderDisk%%nameDisk%%formatDisk%" - Full Setting in options. Pipe method to open.
REM ---------------------------------------------------------------------------------------------------------------

REM Open diskpart (Pipe method)...
(
echo select vdisk file="%folderDisk%%nameDisk%%formatDisk%"
echo attach vdisk
) | diskpart

echo Virtual Hard Disk (VHD) connect.



REM Waiting to press any key / Ожидание нажатия клавиши
pause  


