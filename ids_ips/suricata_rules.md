# Suricata IDS – Custom Rules Example

## What is Suricata?

Suricata is an open-source intrusion detection/prevention system (IDS/IPS) capable of real-time traffic analysis, packet logging, and deep packet inspection.

---

## Sample Rule: Detect HTTP requests with suspicious user-agent

```suricata
alert http any any -> any any (msg:"Suspicious User-Agent Detected"; content:"User-Agent|3A|"; http_header; content:"sqlmap"; nocase; classtype:web-application-attack; sid:100001; rev:1;)
```

## Sample Rule: Detect outbound DNS queries to known malicious domain

```suricata
alert dns any any -> any any (msg:"Malicious Domain Lookup Detected"; content:"badexample.com"; nocase; classtype:trojan-activity; sid:100002; rev:1;)
```

---

## Notes

- Rules are placed in files like `local.rules` under `/etc/suricata/rules/`.
- Use `suricata -T -c /etc/suricata/suricata.yaml -v` to test your rules.
- Each `sid` must be unique in your rule set.
