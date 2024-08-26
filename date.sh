userid=$(id -u)
if [ $userid -ne 0 ]
then
   echo "plz give root access"
   exit 1

fi
dnf list installed gittt
if [ $? -ne 0 ]
then
   echo "plz install git"
   dnf install git -y
else
   echo "already installed"
fi


