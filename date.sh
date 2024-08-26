number=$1
dnf install git -y
if [ $? -ne 0 ]
then
   echo "hi naveen"
else
   echo "bye naveen"
fi