#!/bin/bash
LOGS_FOLDER="var/log/shell_script"
SCRIPT_NAME=$($0 |cut -d "." -f1)
TIMESTAMP=$(date +%H-%m-%d-%M-%H-%s)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME/$TIMESTAMP.log"
mkdir -p $LOGS_FOLDER

echo "hi"&>>$LOG_FILE