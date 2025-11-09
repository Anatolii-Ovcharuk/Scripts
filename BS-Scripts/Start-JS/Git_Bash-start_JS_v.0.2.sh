#!/usr/bin/env bash

# ✅ Особенности:
# Работает везде (Windows Git Bash, Linux, macOS).
# Автоматически находит папку скрипта (SCRIPT_DIR).
# Проверяет, установлен ли node.
# В Windows/Git Bash не закрывается сразу, ждёт нажатия клавиши.
# В Linux/macOS завершается сразу (как принято в терминалах).
# Дай права на выполнение (для Linux/Mac): chmod +x start-index.sh

# ===============================================================
# Auto-start: Auto-start JavaScript on Server and Desktop (Cross-platform)
# Made by Anatolii Ovcharuk. Version 0.2 - Update 09.09.2025 / MIT License
# Github: https://github.com/Anatolii-Ovcharuk
# ===============================================================

echo "==============================================================="
echo "Auto-start JavaScript with Node.js (Cross-platform version)"
echo "Made by Anatolii Ovcharuk - Version 0.2 - Update 09.09.2025"
echo "Github: https://github.com/Anatolii-Ovcharuk"
echo "==============================================================="

# --- Определяем директорию, где находится скрипт ---
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR" || exit 1

# --- Проверка наличия Node.js ---
if ! command -v node &> /dev/null; then
  echo "[ERROR] Node.js не найден! Установите Node.js и добавьте его в PATH."
  # В Windows/Git Bash останавливаемся и ждём клавишу
  case "$(uname -s)" in
    MINGW*|CYGWIN*|MSYS*)
      read -n 1 -s -r -p "Press any key to exit..."
      ;;
  esac
  exit 1
fi

# --- Очистка экрана ---
clear

# --- Запуск index.js ---
export USE_AS_SERVICE="No"
echo "[INFO] Запуск index.js..."
node ./index.js

# --- Сообщение об окончании ---
echo ""
echo "[INFO] Скрипт завершён."

# --- Для Windows (Git Bash) — ждём нажатия клавиши ---
case "$(uname -s)" in
  MINGW*|CYGWIN*|MSYS*)
    read -n 1 -s -r -p "Press any key to exit..."
    ;;
esac


# ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
# ВОЗМОЖНОСТИ И УЛУЧШЕНИЯ:
# Можно сделать версию-обёртку: один .bat, который при запуске автоматически вызывает этот .sh через Git Bash - Тогда можно будет запускать и двойным кликом в Windows, и в Linux напрямую.
# Можно сделать поддержку запуска других файлов - чтобы он мог запускать не только index.js, а любой файл, который передашь.


# ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████

#!/usr/bin/env bash

# ✅ Особенности этой версии:
# ✔ Работает одинаково на Windows (Git Bash), Linux и macOS
# ✔ Проверяет наличие Node.js и красиво сообщает об ошибке
# ✔ Очищает экран перед запуском (чистый вывод)
# ✔ Возвращает код завершения Node.js (полезно для CI/CD)
# ✔ На Windows ждёт нажатия клавиши, чтобы окно не закрылось
# Дай права на выполнение (для Linux/Mac): chmod +x start-index.sh

# # ===============================================================
# # Auto-start: Universal JavaScript Launcher
# # Works on Windows (Git Bash), Linux, macOS
# # Made by Anatolii Ovcharuk. Version 0.2 - Update 09.09.2025 / MIT License
# # Github: https://github.com/Anatolii-Ovcharuk
# # ===============================================================

# echo "==============================================================="
# echo "Auto-start: Universal JavaScript Launcher"
# echo "Made by Anatolii Ovcharuk - Version 0.2 - Update 09.09.2025 / MIT License"
# echo "Github: https://github.com/Anatolii-Ovcharuk"
# echo "==============================================================="

# # --- Переход в директорию, где находится скрипт ---
# SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
# cd "$SCRIPT_DIR" || exit 1

# # --- Проверка установлен ли node ---
# if ! command -v node &> /dev/null; then
#   echo "[ERROR] Node.js не найден. Установите Node.js и добавьте его в PATH."
#   if [[ "$OSTYPE" == "msys"* || "$OSTYPE" == "win32"* ]]; then
#     # Windows (Git Bash) – ожидаем нажатие клавиши
#     read -n 1 -s -r -p "Press any key to exit..."
#   fi
#   exit 1
# fi

# # --- Очистка экрана ---
# clear

# # --- Запуск index.js ---
# echo "[INFO] Запуск index.js через Node.js..."
# node ./index.js
# EXIT_CODE=$?

# echo ""
# echo "[INFO] Скрипт завершил работу с кодом $EXIT_CODE"

# # --- Ожидание нажатия клавиши только на Windows (чтобы окно не закрылось) ---
# if [[ "$OSTYPE" == "msys"* || "$OSTYPE" == "win32"* ]]; then
#   echo ""
#   read -n 1 -s -r -p "Press any key to exit..."
# fi

# exit $EXIT_CODE
