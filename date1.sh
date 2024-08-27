#!/bin/bash
userdata=(id -u)
if[ $useradata -ne 0 ]
then
    echo "plz give root access"

fi
dnf install git -y    