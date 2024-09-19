/* "Port Scanner", v. 1.0 - 19.09.2024 | MIT License | Made by Anatolii Ovcharuk - https://github.com/Anatolii-Ovcharuk */

    /* INSTALLATION */
/* Install: `npm install async`. Then open terminal in folder project, write "node port_scan.js" and press "ENTER". */


const net = require('net');
const dgram = require('dgram');
const async = require('async'); // Установите с помощью `npm install async`

const checkTCPPort = (host, port, callback) => {
    console.log(`Checking TCP port ${port}...`);
    const socket = new net.Socket();
    socket.setTimeout(1000);
    socket.on('connect', () => {
        socket.destroy();
        console.log(`TCP port ${port} is open.`);
        callback(null, port);
    });
    socket.on('timeout', () => {
        socket.destroy();
        console.log(`TCP port ${port} timed out.`);
        callback(null, false);
    });
    socket.on('error', () => {
        console.log(`TCP port ${port} is closed.`);
        callback(null, false);
    });
    socket.connect(port, host);
};

const checkUDPPort = (host, port, callback) => {
    if (port < 1 || port > 65535) {
        return callback(null, false);
    }

    console.log(`Checking UDP port ${port}...`);
    const socket = dgram.createSocket('udp4');
    const message = Buffer.from('test');
    const timeout = setTimeout(() => {
        socket.close();
        console.log(`UDP port ${port} timed out.`);
        callback(null, false);
    }, 1000);
    socket.on('message', () => {
        clearTimeout(timeout);
        socket.close();
        console.log(`UDP port ${port} is open.`);
        callback(null, port);
    });
    socket.on('error', () => {
        clearTimeout(timeout);
        socket.close();
        console.log(`UDP port ${port} is closed.`);
        callback(null, false);
    });
    socket.send(message, port, host);
};

const scanPorts = (host, startPort, endPort, protocol, concurrency, callback) => {
    if (startPort < 1) startPort = 1;
    if (endPort > 65535) endPort = 65535;

    const ports = Array.from({ length: endPort - startPort + 1 }, (_, i) => startPort + i);
    const checkPort = protocol === 'udp' ? checkUDPPort : checkTCPPort;
    async.mapLimit(ports, concurrency, (port, cb) => {
        checkPort(host, port, (err, result) => {
            if (result) cb(null, port);
            else cb(null, null);
        });
    }, (err, results) => {
        callback(results.filter(port => port !== null));
    });
};

// Основной блок для сканирования обоих протоколов
const host = '213.168.190.160'; // Замените на целевой хост (Setting: IP Address)
const startPort = 0; // Setting: Number of starting scan port
const endPort = 65535; /* Максимальное количество портов в TCP/IP и UDP протоколе — 65535 (Setting: Number of ending scan port) */
const concurrency = 100; // Количество параллельных подключений

const protocols = ['tcp', 'udp']; // Добавьте необходимые протоколы (Setting: Protocols)

protocols.forEach(protocol => {
    scanPorts(host, startPort, endPort, protocol, concurrency, (openPorts) => {
        console.log(`Open ${protocol.toUpperCase()} ports: ${openPorts}`);
    });
});

// Откройте терминал, перейдите в папку проекта и запустите скрипт: node port_scan.js
