#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "plz choose root access"
    exit 1
fi
dnf install git -y    