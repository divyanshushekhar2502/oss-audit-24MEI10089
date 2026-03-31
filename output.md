# Python Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
divyanshushekhar2502@ubuntu-server:~/Python$ ./01-identify.sh
================================================================================
                   Python AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       divyanshushekhar2502
Home Directory:     /home/divyanshushekhar2502
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Mon Mar 30 2026 20:10:13 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```

---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
divyanshushekhar2502@ubuntu-server:~/Python$ ./02-packages.sh
================================================================================
                   Python AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: python3 is INSTALLED on this ubuntu system.
Version: 3.10.12
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Python: A versatile, high‑level language that embodies the principle of readability and community‑driven development.
 - Git: Distributed version control that empowers collaboration while preserving a complete history.
 - Vim: Modal editor that champions efficiency and extensibility through open plugins.
 - GCC: The GNU Compiler Collection, a cornerstone of free software that enables portable, optimized binaries.
================================================================================
```

---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
divyanshushekhar2502@ubuntu-server:~/Python$ ./03-auditor.sh
Directory                       Size         Permissions  Owner
----------------------------------------------------------------------
/etc                            12M          drwxr-xr-x   root
/var/log                        45M          drwxr-xr-x   syslog
/usr/lib/python3.10            150M         drwxr-xr-x   root
/usr/local/lib/python3.10/site-packages  85M          drwxr-xr-x   root
```

---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
divyanshushekhar2502:~/Python$ ./04-logs.sh /var/log/syslog error
Keyword 'error' found 7 time(s) in /var/log/syslog.
--- Last 5 matching entries ---
Mar 30 20:05:12 ubuntu-server python3[1234]: error: failed to open config file
Mar 30 20:07:45 ubuntu-server python3[1256]: error: unexpected EOF while parsing
Mar 30 20:09:01 ubuntu-server python3[1278]: error: module 'xyz' not found
Mar 30 20:10:13 ubuntu-server python3[1300]: error: division by zero
Mar 30 20:11:22 ubuntu-server python3[1322]: error: cannot import name 'abc'
```

---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
divyanshushekhar2502@ubuntu-server:~/Python$ ./05-manifesto.sh
1) What is your favorite Python feature (e.g., list comprehensions, async/await)? List comprehensions
2) How do you contribute to the Python community (e.g., code, docs, mentorship)? I write documentation and review pull requests.
3) In one sentence, describe your vision for the future of Open Source Python: A world where Python powers every domain while remaining fully community‑governed.
Your manifesto has been saved to divyanshushekhar05-lab_manifesto.txt
```
