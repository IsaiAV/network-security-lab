# Network Security Lab – Setup Guide

This lab is designed for learners, analysts, and job-seekers looking to gain hands-on skills with firewalls, VPNs, and intrusion detection systems.

---

## Prerequisites

- A Linux VM (Ubuntu/Debian preferred)
- Root/sudo access
- Optional: A secondary VM for attack simulation (Kali Linux)

---

## Recommended Tools

Install these before using the lab modules:

```bash
sudo apt update && sudo apt install openvpn iptables suricata
```

Optional for advanced labs:
```bash
sudo apt install wireguard fail2ban tcpdump
```

---

## Testing the Lab

- Use `ping`, `curl`, `nmap` to test firewall rules.
- Try simulated attacks (e.g., SQLmap, Nikto) for IDS detection.
- VPN configurations can be tested by connecting a client to your local OpenVPN server.

---

## Running the Lab

Each folder contains its own README or `.md` files with sample configs and walkthroughs.

```
firewalls/
  └── iptables_basics.md
ids_ips/
  └── suricata_rules.md
vpn_configs/
  └── openvpn_setup.md
```

---

## Bonus Challenges

- Set up log forwarding with `rsyslog`
- Create your own Suricata rule
- Block ICMP traffic and test ping failures

---

> Need help setting this up? Open an issue or reach out.
