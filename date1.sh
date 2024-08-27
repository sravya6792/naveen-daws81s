#!/bin/bash
userdata=$(id -u)
R="\e[31m "
G="\e[32m "
N="\e[33m "



validate()
{
    if [ $? -ne 0 ]
    then
        echo "$2....$R is not installed $N"
    else
        echo "$2...$G is installed  $N"

    fi        
}


echo "$userdata"
if [ $userdata -ne 0 ]
then
   echo "plz choose root access"
   exit 1
else
   echo "git installed"
fi
       dnf install git -y
       
       
if [ $? -ne 0 ]
then
   echo "git is not installed plz install"
   dnf install git -y
   validate $? "git is"
   
else
   echo "git is already installed"
fi
 dnf install mysql -y
       
       
if [ $? -ne 0 ]
then
   echo "mysql is not installed plz install"
   dnf install mysql -y
   validate $? "mysql is"
   
else
   echo "mysql is already installed"
fi




