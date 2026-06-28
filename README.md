# Server Performance Stats

A simple Bash script to analyze and display basic server performance statistics. This project is part of the [roadmap.sh](https://roadmap.sh/projects/server-stats) DevOps/Linux challenges.

## Features

The script provides the following real-time statistics of your Linux server:
- **Total CPU Usage** (Percentage of CPU currently being used)
- **Total Memory Usage** (Free vs Used RAM with percentage)
- **Total Disk Usage** (Free vs Used storage with percentage)
- **Top 5 Processes** by CPU usage
- **Top 5 Processes** by Memory usage

## Prerequisites

This script is designed to run on any **Linux** environment (Ubuntu, CentOS, Debian, etc.). It requires basic tools like `top`, `free`, `df`, and `ps` which come pre-installed on most Linux servers.

> **Note for Windows Users:** If you are running this in Git Bash on Windows, the Linux-specific commands (`top`, `free`) might not display stats, but the script contains safety checks for it.

## How to Run Locally

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/Swapn1602/Server-stat.sh.git](https://github.com/Swapn1602/Server-stat.sh.git)
   cd Server-stat.sh
