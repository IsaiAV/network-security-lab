# OpenVPN – Basic Server Configuration

## What is OpenVPN?

OpenVPN is an open-source VPN solution that creates secure point-to-point or site-to-site connections using SSL/TLS protocols.

---

## 🔧 Basic `server.conf` Configuration

```bash
port 1194
proto udp
dev tun
ca ca.crt
cert server.crt
key server.key
dh dh.pem
server 10.8.0.0 255.255.255.0
ifconfig-pool-persist ipp.txt
push "redirect-gateway def1 bypass-dhcp"
push "dhcp-option DNS 1.1.1.1"
keepalive 10 120
cipher AES-256-CBC
persist-key
persist-tun
status openvpn-status.log
verb 3
```

---

## File Locations (Typical Ubuntu Setup)

- `/etc/openvpn/server.conf` – main server config
- `/etc/openvpn/easy-rsa/` – certificate and key management

---

## Tip

Use `systemctl status openvpn@server` to check service status.  
You can also run `openvpn --config client.ovpn` from a client machine to connect.
