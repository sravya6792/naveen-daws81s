userid=$(id -u)
if [ $userid -ne 0]
then
   echo "plz give root access"

fi
dnf list installed git
if [ $? -ne 0 ]
then
   echo "plz install git"
else
   echo "already installed"
fi


