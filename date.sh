userid=(id -u)

if [ $userid -ne 0 ]
then
   echo "plz give root acces"

fi
dnf install git -y