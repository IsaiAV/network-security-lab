# OSSEC – Host-Based Intrusion Detection Config

## What is OSSEC?

OSSEC (Open Source Security) is a host-based intrusion detection system (HIDS) that performs log analysis, file integrity checking, policy monitoring, rootkit detection, and more.

---

## Install OSSEC (Ubuntu/Debian)

```bash
sudo apt update
sudo apt install ossec-hids ossec-hids-server
```

---

## Key Config File: `/var/ossec/etc/ossec.conf`

Here's a basic config snippet for monitoring syslog and SSH:

```xml
<ossec_config>
  <syscheck>
    <directories check_all="yes">/etc</directories>
    <frequency>3600</frequency>
  </syscheck>

  <rootcheck>
    <disabled>no</disabled>
  </rootcheck>

  <localfile>
    <log_format>syslog</log_format>
    <location>/var/log/auth.log</location>
  </localfile>

  <active-response>
    <command>host-deny</command>
    <location>all</location>
    <level>10</level>
  </active-response>
</ossec_config>
```

---

## Pro Tips

- OSSEC runs as `ossec` user and logs to `/var/ossec/logs/`.
- Use `agent-auth` if you're deploying across multiple endpoints.
- Tune alerts in `/var/ossec/rules/` and `/var/ossec/etc/rules/`.

---

## Useful Commands

```bash
sudo systemctl status ossec
sudo tail -f /var/ossec/logs/alerts/alerts.log
```

---

> Use OSSEC to detect internal compromise, unauthorized changes, and log-based threats.
