userid=$(id -u)
if [ $userid -ne 0 ]
then
   echo"please run the script with root"
   exit 1


fi
dnf install git -y