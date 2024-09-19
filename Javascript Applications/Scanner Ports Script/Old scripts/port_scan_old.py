import socket

def check_port(host, port):
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.settimeout(1)
    result = sock.connect_ex((host, port))
    sock.close()
    return result == 0

host = "213.168.190.160"
ports = range(1, 1025)  # Можно изменить диапазон портов.  Максимальное количество портов в TCP/IP протоколе — 65535.

open_ports = []
for port in ports:
    if check_port(host, port):
        open_ports.append(port)

print(f"Open ports: {open_ports}")
# Запустите скрипт, введя команду: python port_scan.py