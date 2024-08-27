#!/bin/bash
userdata=$(id -u)

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
   if [ $? -ne 0 ]
   then
      echo "git is not installed"
   else 
      echo "git is installed boss"
else
   echo "git is already installed"
fi
