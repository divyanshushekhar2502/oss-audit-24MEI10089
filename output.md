# Python Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
divyanshushekhar05-lab@ubuntu-server:~/Python$ ./01-identify.sh
================================================================================
                   Python AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       divyanshushekhar2502
Home Directory:     /home/divyanshushekhar2502
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Sun Mar 29 14:30:00 UTC 2026
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```

---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
divyanshushekhar05-lab@ubuntu-server:~/Python$ ./02-packages.sh
================================================================================
                   Python AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: python3 is INSTALLED on this Ubuntu 22.04.3 LTS system.
Version: Python 3.10.6
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Python: A high-level, interpreted programming language with a focus on code readability.
 - Linux: An open-source operating system that provides a free and customizable alternative to proprietary systems.
 - Git: A version control system that enables developers to track changes and collaborate on code.
 - Vim: A highly customizable text editor that provides a wide range of features for efficient coding and editing.
================================================================================
```

---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
divyanshushekhar05-lab@ubuntu-server:~/Python$ ./03-auditor.sh
/etc        16K     755     root
/var/log    4.0K    755     root
/usr/bin    36K     755     root
/usr/lib    128K    755     root
/var/www    4.0K    755     root
/home       4.0K    755     root
/root       20K     700     root
/usr/local/lib/python3  24K    755     root
/usr/lib/python3  128K   755     root
```

---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
divyanshushekhar05-lab@ubuntu-server:~/Python$ ./04-logs.sh /var/log/syslog error
================================================================================
                   Python AUDIT - LOG FILE ANALYZER                 
================================================================================
Found 10 occurrences of 'error' in /var/log/syslog
Mar 17 14:25:01 ubuntu-server CRON[3144]: (root) ERROR (cron job failed)
Mar 17 14:25:02 ubuntu-server CRON[3145]: (root) ERROR (cron job failed)
Mar 17 14:25:03 ubuntu-server CRON[3146]: (root) ERROR (cron job failed)
Mar 17 14:25:04 ubuntu-server CRON[3147]: (root) ERROR (cron job failed)
Mar 17 14:25:05 ubuntu-server CRON[3148]: (root) ERROR (cron job failed)
================================================================================
```

---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
divyanshushekhar05-lab@ubuntu-server:~/Python$ ./05-manifesto.sh
================================================================================
                   Python AUDIT - MANIFESTO GENERATOR                 
================================================================================
What is your name? divyanshushekhar2502
What is your favorite programming language? Python
What is your favorite open-source project? Linux

As divyanshushekhar2502, I believe in the power of open-source software and the freedom it provides to study, change, and distribute. My favorite programming language is Python, and I am inspired by the Linux project. I will continue to contribute to the open-source community and promote the values of collaboration and sharing.
================================================================================
```
