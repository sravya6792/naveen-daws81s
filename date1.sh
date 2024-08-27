#!/bin/bash
userdata=$(id -u)

echo "$userdata"
if [ $userdata -ne 0 ]
then
   echo "hi"
else
   echo "hello"
fi
       

