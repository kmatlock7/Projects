#!/bin/bash
# a bash script to store system information
echo $(free) > ~/backups/freemem/free_mem.txt
echo $(df -h) > ~/backups/diskuse/disk_usage.txt
echo $(lsof) > ~/backups/openlist/open_list.txt
echo $(df -h) > ~/backups/freedisk/free_disk.txt


