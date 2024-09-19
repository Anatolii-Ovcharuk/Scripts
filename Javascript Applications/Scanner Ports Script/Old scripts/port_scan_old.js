const net = require('net');
const dgram = require('dgram');
const async = require('async'); // Установите с помощью `npm install async`

const checkTCPPort = (host, port, callback) => {
    const socket = new net.Socket();
    socket.setTimeout(1000);
    socket.on('connect', () => {
        socket.destroy();
        callback(null, port);
    });
    socket.on('timeout', () => {
        socket.destroy();
        callback(null, false);
    });
    socket.on('error', () => {
        callback(null, false);
    });
    socket.connect(port, host);
};

const checkUDPPort = (host, port, callback) => {
    const socket = dgram.createSocket('udp4');
    const message = Buffer.from('test');
    const timeout = setTimeout(() => {
        socket.close();
        callback(null, false);
    }, 1000);
    socket.on('message', () => {
        clearTimeout(timeout);
        socket.close();
        callback(null, port);
    });
    socket.on('error', () => {
        clearTimeout(timeout);
        socket.close();
        callback(null, false);
    });
    socket.send(message, port, host);
};

const scanPorts = (host, startPort, endPort, protocol, concurrency, callback) => {
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

// Параметры
const host = '213.168.190.160'; // Замените на целевой хост
const startPort = 0;
const endPort = 65535; /* Максимальное количество портов в TCP/IP и UDP протоколе — 65535 */
const concurrency = 100; // Количество параллельных подключений
const protocol = 'tcp'; // Выберите 'tcp' или 'udp'

scanPorts(host, startPort, endPort, protocol, concurrency, (openPorts) => {
    console.log(`Open ${protocol.toUpperCase()} ports: ${openPorts}`);
});

// Откройте терминал, перейдите в папку проекта и запустите скрипт: node port_scan.js

