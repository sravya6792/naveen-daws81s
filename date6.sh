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


echo "hi"


validate()
{
    if [ $? -ne 0 ]
    then
        echo  -e "$2....$R is not installed $N"| tee -a $LOG_FILE
    else
        echo  -e "$2...$G is installed  $N"| tee -a $LOG_FILE

    fi        
}
echo "$userdata"
if [ $userdata -ne 0 ]
then
   echo "plz choose root access"|tee -a $LOG_FILE
   exit 1
else
   echo "$package installed"&>>LOG_FILE
fi
for package in $@
do
  dnf list installed $package&>>$LOG_FILE
       
       
if [ $? -ne 0 ]
then
   echo "$package is not installed plz install"&>>$LOG_FILE
   dnf install $package&>>LOG_FILE
   
   
   
    
   validate $? "$package is"
   
else
   echo "$package is already installed"&>>$LOG_FILE
fi
