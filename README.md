# OSS Audit — Git
## Open Source Software Course | VITyarthi

| Field | Details |
|-------|---------|
| Student Name | Yashita Nayyar |
| Roll Number | 24BCE10025 |
| Chosen Software | Git |
| Course | Open Source Software |

---

## About This Project
This repository contains the shell scripts and documentation for the Open Source Audit project. The chosen software is **Git** — a free and open source distributed version control system created by Linus Torvalds in 2005, licensed under GNU GPL v2.

---

## Repository Structure
```
oss-audit-24BCE10025/
├── script1.sh        # System Identity Report
├── script2.sh        # FOSS Package Inspector
├── script3.sh        # Disk and Permission Auditor
├── script4.sh        # Log File Analyzer
├── script5.sh        # Open Source Manifesto Generator
└── README.md         # Project documentation
```

---

## Scripts — Description and Usage

### Script 1 — System Identity Report
Displays a welcome screen with complete system information including kernel version, logged in user, home directory, uptime, date and time, and the open source license of the OS.

**Concepts used:** variables, echo, command substitution, output formatting

**How to run:**
```bash
bash script1.sh
```

---

### Script 2 — FOSS Package Inspector
Checks whether Git is installed on the system, displays its version and license information, and uses a case statement to print an open source philosophy note about the package.

**Concepts used:** if-then-else, case statement, dpkg, pipe with grep

**How to run:**
```bash
bash script2.sh
```

---

### Script 3 — Disk and Permission Auditor
Loops through a list of important system directories and reports the size, owner and permissions of each. Also checks for Git configuration files specifically.

**Concepts used:** for loop, ls -ld, du, awk, cut

**How to run:**
```bash
bash script3.sh
```

---

### Script 4 — Log File Analyzer
Reads a log file line by line, counts how many lines contain a given keyword, prints the last 5 matching lines, and gives a summary of activity level.

**Concepts used:** while read loop, if-then, counter variables, command-line arguments, grep, tail

**How to run:**
```bash
bash script4.sh /var/log/apt/history.log install
```

---

### Script 5 — Open Source Manifesto Generator
Asks the user three interactive questions and generates a personalised open source philosophy statement, saving it to a text file.

**Concepts used:** read for user input, string concatenation, writing to file, date command, alias demonstration

**How to run:**
```bash
bash script5.sh
```

---

## Dependencies
All scripts run on any standard Linux system. No additional packages required beyond:
- bash (pre-installed)
- git (pre-installed on most systems)
- dpkg (pre-installed on Ubuntu/Debian)

---

## How to Run on Linux
1. Clone this repository:
```bash
git clone https://github.com/Yashita0910/oss-audit-24BCE10025.git
```
2. Enter the directory:
```bash
cd oss-audit-24BCE10025
```
3. Give execute permission to all scripts:
```bash
chmod +x *.sh
```
4. Run any script:
```bash
bash script1.sh
```
