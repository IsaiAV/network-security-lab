# Cisco ACL – Basic Access Control List Examples

## What is an ACL?

An Access Control List (ACL) is a set of rules used to control traffic on Cisco routers and switches. ACLs filter network traffic based on source/destination IP, ports, and protocols.

---

## Example 1: Permit SSH to a specific host

```cisco
access-list 101 permit tcp any host 192.168.1.100 eq 22
```

## Example 2: Deny all HTTP traffic from a subnet

```cisco
access-list 102 deny tcp 192.168.10.0 0.0.0.255 any eq 80
```

## Example 3: Permit ICMP (Ping) to a network

```cisco
access-list 103 permit icmp any 10.0.0.0 0.0.0.255
```

---

## Notes

- ACLs must be applied to interfaces using `ip access-group <acl-number> in|out`.
- The wildcard mask (e.g. `0.0.0.255`) is used instead of a subnet mask.
- ACLs are processed top-down — the first match wins.
