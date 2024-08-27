#!/bin/bash
userdata=$(id -u)

echo "$userdata"
if [ $userdata -ne 0 ]
then
   echo "plz choose root access"
   exit 1
else
   echo "hello"
fi
       dnf install git -y

