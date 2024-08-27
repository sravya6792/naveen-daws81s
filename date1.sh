#!/bin/bash
userdata=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[33m"

LOGS_FOLDER="/var/log/shell_script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date + %y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.LOG"

validate()
{
    if [ $? -ne 0 ]
    then
        echo  -e "$2....$R is not installed $N"&>>LOG_FILE
    else
        echo  -e "$2...$G is installed  $N"&>>LOG_FILE

    fi        
}


echo "$userdata"
if [ $userdata -ne 0 ]
then
   echo "plz choose root access"&>>LOG_FILE
   exit 1
else
   echo "git installed"&>>LOG_FILE
fi
       dnf list installed gitttt
       
       
if [ $? -ne 0 ]
then
   echo "git is not installed plz install"&>>LOG_FILE
   dnf install gittt
   
   
   
    -y
   validate $? "git is"
   
else
   echo "git is already installed"&>>LOG_FILE
fi
 dnf list avaialable mysql 
       
       
if [ $? -ne 0 ]
then
   echo "mysql is not installed plz install"&>>LOG_FILE
   dnf install mysql -y
   validate $? "mysql is"
   
else
   echo "mysql is already installed"&>>LOG_FILE
fi




