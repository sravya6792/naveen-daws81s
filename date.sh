userid=$(id -u)

if [ $userid -ne 0 ]
then
   echo "plz give root acces"

   exit 1

fi
dnf list installed git
   if [ $? -ne 0 ]
   then
       echo "git not"
   else
      echo "git"