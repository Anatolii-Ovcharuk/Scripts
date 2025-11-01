#!/usr/bin/env bash
# Auto-start: Auto-start JavaScript on Server and Desktop for Windows (Git Bash Version)
# Made by Anatolii Ovcharuk. Version 0.1 - Update 09.09.2025 / MIT License
# Github: https://github.com/Anatolii-Ovcharuk
# This is .sh file script for Git Bash, using Node.js to run JS file

echo "==============================================================="
echo "Auto-start: Auto-start JavaScript on Server and Desktop for Windows"
echo "Made by Anatolii Ovcharuk - Version 0.1 - Update 09.09.2025 / MIT License"
echo "Github: https://github.com/Anatolii-Ovcharuk"
echo "==============================================================="

# Переход в директорию, где находится скрипт
cd "$(dirname "$0")" || exit 1

# Проверка установлен ли node
if ! command -v node &> /dev/null; then
  echo "[ERROR] Node.js не найден. Установите Node.js и добавьте его в PATH."
  read -n 1 -s -r -p "Press any key to exit..."
  exit 1
fi

# Очистка экрана
clear

# Запуск index.js
node ./index.js

echo ""
read -n 1 -s -r -p "Press any key to exit..."
