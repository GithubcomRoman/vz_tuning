#!/bin/bash

login=""
password=""
host=""

log_mb=/var/log/backups/ftp_use.log

size=$(lftp -e 'du -mc; bye;' -u $login,$password $host | grep total | awk '{print $1}')

echo "backup size in mb: $size"
echo $size > $log_mb
