#!/bin/bash

#THis script will execute various Linux tools to parse information about the system. Each of these outputs results to a text file inside its respective system information directory for you to reference.
less /proc/meminfo | grep MemAvailable >> ~/backups/freemem/free_mem.txt
du -sh / | tail -1 >> ~/backups/diskuse/disk_use.txt
ps -aef  >> ~backups/openlist/open_list.txt
df -h / | >> ~/backups/freedisk/free_disk.txt
