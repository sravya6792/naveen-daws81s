#!/bin/bash
userid=$(id -u)


validate()
{
 if [ $1 -ne 0 ]
 then
     echo "$2 is failed"

 else
    echo "$2 is success"

 fi     



}
if [ $userid -ne 0 ]
then
    echo "plz choose root access"
    exit 1
fi

for package in $@
do
  dn install $package -y
  validate $? "$package"
done  