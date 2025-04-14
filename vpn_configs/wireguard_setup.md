# ⚡ WireGuard – Fast, Modern VPN Setup

## What is WireGuard?

WireGuard is a high-performance, modern VPN that uses cutting-edge cryptography (Curve25519, ChaCha20) and is much faster and simpler to configure than traditional VPNs like OpenVPN.

---

## Install WireGuard (Ubuntu/Debian)

```bash
sudo apt update
sudo apt install wireguard
```

---

## Sample `wg0.conf` (Server)

```ini
[Interface]
Address = 10.0.0.1/24
PrivateKey = <server_private_key>
ListenPort = 51820

[Peer]
PublicKey = <client_public_key>
AllowedIPs = 10.0.0.2/32
```

---

## Sample `wg0.conf` (Client)

```ini
[Interface]
Address = 10.0.0.2/24
PrivateKey = <client_private_key>

[Peer]
PublicKey = <server_public_key>
Endpoint = your-server-ip:51820
AllowedIPs = 0.0.0.0/0
PersistentKeepalive = 25
```

---

## Commands

```bash
sudo wg-quick up wg0    # Start VPN
sudo wg-quick down wg0  # Stop VPN
sudo wg                 # Show status
```

---

## Tips

- Use `wg genkey | tee private | wg pubkey > public` to generate keys.
- Open port `51820/udp` on your firewall.
- Add forwarding with:
  ```bash
  echo "net.ipv4.ip_forward_
