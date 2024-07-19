# Backup Script with Cron Job

## Overview

This repository contains a script to take backups of a given directory every minute using `crontab`. The script keeps the most recent 5 backups and deletes the oldest backup when a new one is created, ensuring that only the latest 5 backups are retained.

## Script Description

The script takes two arguments:
- `<path of directory>`: The path of the directory to be backed up.
- `<path of backup directory>`: The path where the backup files will be stored.

## Note
1. You need to explicitly set up crontab to schedule the backups.
```bash
crontab -e
```
2. Ensure that zip is installed on your system. You can install it using the following command:
```bash
sudo apt-get install zip
```
## Usage

### Step 1: Clone the Repository

```bash
git clone https://github.com/OmkarPatil4141 /Server_Backup.git
cd Server_Backup
```
### Step 2: Make the Script Executable
```bash
chmod +x backup.sh
```
### Step 3: Run the Script Manually
```bash
./backup.sh <path of directory> <path of backup directory>
```
## Screenshots

### Script Execution

![Script Execution](path/to/your/screenshot1.png)

### Crontab Configuration

![Crontab Configuration](path/to/your/screenshot2.png)



