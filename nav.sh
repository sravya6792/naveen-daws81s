
#!/bin/bash
userdata=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[33m"
LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log"
mkdir -p $LOGS_FOLDER
echo "hi"&>>$LOG_FILE




