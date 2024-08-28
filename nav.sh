
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
dnf install mysql-server -y
validate $? "installing mysql server"

systemctl enable mysqld
validate $? "installing mysql server is enabled or not"
systemctl start mysqld
validate $? "installing mysql server is started or not"
mysql_secure_installation --set-root-pass ExpenseApp@1
validate $? "setting up root password "



