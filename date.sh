number=$1
dnf install git -y
if [ $?!=0 ]
then
   echo "install git"
else
   echo "git already installed"
fi