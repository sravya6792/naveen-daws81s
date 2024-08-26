userid=$(id -u)

if [ $userid -ne 0 ]
then
   echo "plz give root acces"

   exit 1

fi
