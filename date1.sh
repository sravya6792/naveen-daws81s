#!/bin/bash
userdata=$(id -u)
validate()
{
    if [ $? -ne 0 ]
    then
        echo "$2 is not installed"
    else
        echo "$2 is installed"

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
       dnf install gittttt -y
       
       
if [ $? -ne 0 ]
then
   echo "git is not installed plz install"
   dnf install git -y
   validate $? "git is"
   
else
   echo "git is already installed"
fi
