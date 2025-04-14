# Sample Logs – IDS & Firewall Output

These are sample outputs from real-world tools like Suricata, Fail2Ban, and iptables. Use them to demonstrate how attacks are detected and blocked in your lab.

---

## Suricata Alert Log

```
04/13/2025-21:06:35.200000  [**] [1:100001:1] Suspicious User-Agent Detected [**]
[Classification: Web Application Attack] [Priority: 2] 
{TCP} 192.168.0.100:53742 -> 10.0.0.1:80
```

---

## Fail2Ban Ban Log (`/var/log/fail2ban.log`)

```
2025-04-13 21:12:42,563 fail2ban.actions        [945]: NOTICE  [sshd] Ban 185.6.233.55
2025-04-13 21:13:12,875 fail2ban.actions        [945]: NOTICE  [sshd] Ban 45.134.26.91
```

---

## iptables Log (with LOG target rule)

```
Apr 13 21:14:01 lab-server kernel: [UFW BLOCK] IN=eth0 OUT= MAC=... SRC=203.0.113.42 DST=10.0.0.1 LEN=60 TOS=0x00 ...
```

---

## Use Cases

- Include these logs in your reports, screenshots, or interviews
- Use them for Splunk/Wazuh log ingestion testing
- Reference them when building alert rules or dashboards


