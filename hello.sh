#!/bin/bash
LOGS_FOLDER="/var/log/shell_script"
SCRIPT_NAME=$(echo $0 |cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%M-%H-%s)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME/$TIMESTAMP.log"
mkdir -p $LOGS_FOLDER

echo "hi"&>>$LOG_FILE