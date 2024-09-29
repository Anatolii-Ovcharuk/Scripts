/* "Scan Files", v. 0.2 - 30.09.2024 | MIT License | Made by Anatolii Ovcharuk - https://github.com/Anatolii-Ovcharuk */
/* Replace this script in folder were you want search files.  */
/* For start, write in terminal: node Scan_Files.js */

const options = {
    all: true, // Set true/false for ignore to use filters.
    filters_types: ['.txt', '.js', '.json', '.exe', '.bin', '.dll'], // Add or delete type of search files.
}

const fs = require('fs');
const path = require('path');




/* FUNCTIONS */

// Функция для рекурсивного сканирования директорий
function scanDirectory(dir, fileList = []) {
    const files = fs.readdirSync(dir);
    
    files.forEach(file => {
        const fullPath = path.join(dir, file);
        const stat = fs.statSync(fullPath);

        if (stat.isDirectory()) {
            scanDirectory(fullPath, fileList); // Рекурсивно сканируем поддиректории
        } else {
            fileList.push(fullPath); // Добавляем путь к файлу в список
        }
    });

    return fileList;
}

// Функция для рекурсивного сканирования директорий с фильтрацией по типу файлов
function scanDirectoryType(dir, fileList = [], extensions = []) {
    const files = fs.readdirSync(dir);
    
    files.forEach(file => {
        const fullPath = path.join(dir, file);
        const stat = fs.statSync(fullPath);

        if (stat.isDirectory()) {
            scanDirectory(fullPath, fileList, extensions); // Рекурсивно сканируем поддиректории
        } else {
            // Проверяем, если файл соответствует указанным расширениям
            if (extensions.length === 0 || extensions.includes(path.extname(file))) {
                fileList.push(fullPath); // Добавляем путь к файлу в список
            }
        }
    });

    return fileList;
}

// Функция для записи списка файлов в текстовый файл
function saveFileList(fileList, outputFilePath) {
    const fileData = fileList.join('\n');
    fs.writeFileSync(outputFilePath, fileData, 'utf8');
}



/* OTHER */

// Starting dirrectory - current. Начальная директория - текущая. 
const startDir = __dirname;
const outputFile = path.join(__dirname, 'file_paths.txt');

if (options.all === true) {
    // Scan directory and save ways. Сканируем директорию и сохраняем пути.
    const fileList = scanDirectory(startDir);
    saveFileList(fileList, outputFile);
    console.log(`Save result in file: ${outputFile}`);
} else if (options.all === false) {
    // Scan directory and save ways. Сканируем директорию и сохраняем пути.
    const extensionsToFind = options.filters_types;
    const fileList = scanDirectoryType(startDir, [], extensionsToFind);
    saveFileList(fileList, outputFile);
    console.log(`Save result in file: ${outputFile}`);
} else {
    console.log(`Error. Value in options is not correctly... Scanning all as default.`); 
    // Scan directory and save ways. Сканируем директорию и сохраняем пути.
    const fileList = scanDirectory(startDir);
    saveFileList(fileList, outputFile);
    console.log(`Save result in file: ${outputFile}`);    
}






