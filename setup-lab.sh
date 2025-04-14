#!/bin/bash

echo "Setting up Network Security Lab Environment..."

# Update and install core tools
sudo apt update && sudo apt install -y \
  iptables \
  wireguard \
  openvpn \
  suricata \
  fail2ban \
  ossec-hids \
  curl \
  net-tools \
  ufw

# Enable IP forwarding for VPNs
echo "net.ipv4.ip_forward=1" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

# Setup basic iptables rules
echo "Applying basic iptables firewall rules..."
sudo iptables -P INPUT DROP
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# Create directories for lab config backups
mkdir -p ~/network-security-lab/config_backups
sudo iptables-save > ~/network-security-lab/config_backups/iptables.rules

# Reminder to configure IDS/VPN manually
echo "Basic tools installed."
echo "Manual configuration still required for:"
echo "- Suricata rule deployment"
echo "- OSSEC agent registration"
echo "- WireGuard & OpenVPN conf setup"

echo "Done. Your environment is ready to customize."

You can make it executable by:
chmod +x setup-lab.sh
