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
  dnf list installed $package 
  if [ $? -ne 0 ]
  then
      echo "$package is not installed"
      dnf install $package -y
   fi   
done  

echo "hi"