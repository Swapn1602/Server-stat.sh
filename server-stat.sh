#!/bin/bash

echo "==============================================="
echo "          SERVER PERFORMANCE STATS             "
echo "==============================================="

# 1. Total CPU Usage
echo -e "\n[1] TOTAL CPU USAGE:"
if command -v top &> /dev/null; then
    top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " 100 - $8 "%"}'
else
    echo "CPU stats command (top) is only supported on Linux."
fi

# 2. Total Memory Usage
echo -e "\n[2] TOTAL MEMORY USAGE (RAM):"
if command -v free &> /dev/null; then
    free -h | awk 'NR==2{printf "Used: %s / Total: %s (%.2f%%)\n", $3, $2, $3/$2*100}'
else
    echo "Memory stats command (free) is only supported on Linux."
fi

# 3. Total Disk Usage
echo -e "\n[3] TOTAL DISK USAGE:"
df -h / | awk 'NR==2{printf "Used: %s / Total: %s (%s)\n", $3, $2, $5}'

# 4. Top 5 Processes by CPU
echo -e "\n[4] TOP 5 PROCESSES BY CPU USAGE:"
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6

# 5. Top 5 Processes by Memory
echo -e "\n[5] TOP 5 PROCESSES BY MEMORY USAGE:"
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6