# Fail2Ban – SSH & Service Brute Force Protection

## What is Fail2Ban?

Fail2Ban scans log files (e.g., `/var/log/auth.log`) and bans IPs that show malicious signs — too many password failures, exploit scans, etc.

---

## Install Fail2Ban (Ubuntu/Debian)

```bash
sudo apt update
sudo apt install fail2ban
```

---

## Basic SSH Jail Config

Create a file: `/etc/fail2ban/jail.d/ssh.local`

```ini
[sshd]
enabled = true
port    = ssh
filter  = sshd
logpath = /var/log/auth.log
bantime = 3600
findtime = 600
maxretry = 3
```

---

## Optional: Custom Filters

Fail2Ban filters are located in `/etc/fail2ban/filter.d/`. You can create or edit one like `apache-auth.conf`, `nginx-botsearch.conf`, etc.

---

## Monitor Bans

```bash
sudo fail2ban-client status
sudo fail2ban-client status sshd
```

---

## Pro Tips

- Restart Fail2Ban after any config changes:
  ```bash
  sudo systemctl restart fail2ban
  ```
- Use `iptables -L` to confirm that IPs are banned.
- Works for more than just SSH — great for NGINX, FTP, mail servers, etc.

---

> Fail2Ban is a fast, lightweight way to protect services from brute force attacks.
