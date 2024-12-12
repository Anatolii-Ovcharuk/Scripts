/* "System Info", v. 0.2 - 29.09.2024 | MIT License | Made by Anatolii Ovcharuk - https://github.com/Anatolii-Ovcharuk */
/* For start, write in terminal: node System_Info.js */


const os = require('os');
const fs = require('fs');

// Собираем информацию о системе
const systemInfo = `
Operating System: ${os.type()} ${os.release()}
Architecture: ${os.arch()}
Hostname: ${os.hostname()}
CPUs: ${os.cpus().length} cores
CPU Model: ${os.cpus()[0].model}
CPU Speed: ${os.cpus()[0].speed} MHz
Threads per CPU: ${os.cpus()[0].times.user ? Object.keys(os.cpus()[0].times).length : 1}
Total Memory: ${(os.totalmem() / (1024 ** 3)).toFixed(2)} GB
Free Memory: ${(os.freemem() / (1024 ** 3)).toFixed(2)} GB
Uptime: ${(os.uptime() / 3600).toFixed(2)} hours
`;

// Создаем текстовый файл
fs.writeFileSync('system_info.txt', systemInfo);

console.log('Файл system_info.txt создан.');






/* Or use othe version with next code (uncomment next code) */
/* Install: npm install systeminformation */
/* For start, write in terminal: node System_Info.js */



// const os = require('os');
// const fs = require('fs');
// const si = require('systeminformation');

// // Функция для сбора информации о системе
// async function gatherSystemInfo() {
//     const cpuInfo = os.cpus()[0]; // Берем информацию только о первом ядре
//     const gpuInfo = await si.graphics();

//     // Собираем информацию о системе
//     const systemInfo = `
// Operating System: ${os.type()} ${os.release()}
// Architecture: ${os.arch()}
// Hostname: ${os.hostname()}
// CPUs: ${os.cpus().length} cores
// CPU Model: ${cpuInfo.model}
// CPU Speed: ${cpuInfo.speed} MHz
// Threads per CPU: ${cpuInfo.times.user ? Object.keys(cpuInfo.times).length : 1}
// Total Memory: ${(os.totalmem() / (1024 ** 3)).toFixed(2)} GB
// Free Memory: ${(os.freemem() / (1024 ** 3)).toFixed(2)} GB
// Uptime: ${(os.uptime() / 3600).toFixed(2)} hours
// GPU: ${gpuInfo.controllers.length > 0 ? gpuInfo.controllers.map(gpu => `${gpu.model} (${gpu.vendor})`).join(', ') : 'Нет данных о GPU'}
//     `;

//     // Создаем текстовый файл
//     fs.writeFileSync('system_info.txt', systemInfo);
//     console.log('Файл system_info.txt создан.');
// }

// // Запускаем сбор информации
// gatherSystemInfo().catch(console.error);

