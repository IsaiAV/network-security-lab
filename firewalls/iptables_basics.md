# iptables – Basic Firewall Rules

## What is iptables?

`iptables` is a user-space utility program that allows a system administrator to configure the IP packet filter rules of the Linux kernel firewall.

---

##  Sample: Block All Incoming Except SSH (Port 22)

```bash
sudo iptables -P INPUT DROP
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
```

---

## Notes

- `-P INPUT DROP`: Default policy to drop everything  
- `--state ESTABLISHED,RELATED`: Allow responses to outbound traffic  
- Adjust for your use case (web server, VPN, etc.)

---

## Tip

Run `iptables-save > firewall.rules` to back up your configuration.



