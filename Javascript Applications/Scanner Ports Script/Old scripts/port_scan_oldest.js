    /* Old version. Only TCP/IP protocol */

const net = require('net');

const checkPort = (host, port) => {
    return new Promise((resolve, reject) => {
        const socket = new net.Socket();
        socket.setTimeout(1000);
        socket.on('connect', () => {
            socket.destroy();
            resolve(port);
        });
        socket.on('timeout', () => {
            socket.destroy();
            resolve(false);
        });
        socket.on('error', () => {
            resolve(false);
        });
        socket.connect(port, host);
    });
};

const scanPorts = async (host, startPort, endPort) => {
    const openPorts = [];
    for (let port = startPort; port <= endPort; port++) {
        const result = await checkPort(host, port);
        if (result) {
            openPorts.push(port);
        }
    }
    return openPorts;
};

(async () => {
    const host = '213.168.190.160';
    /* Максимальное количество портов в TCP/IP протоколе — 65535 */
    const startPort = 1;
    const endPort = 1024;
    const openPorts = await scanPorts(host, startPort, endPort);
    console.log(`Open ports: ${openPorts}`);
})();

// Откройте терминал, перейдите в папку проекта и запустите скрипт: node port_scan.js
