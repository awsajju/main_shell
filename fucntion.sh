#! /bin/bash

USERID=$(id -u)

validate () {
if [ $1 -ne 0 ]; then
echo "installing ---> failure"
exit 1
else 
echo "installed successful"
fi
}

if [ $USERID -ne 0 ]; then

echo "You must have the sudo access to execute this"
exit 1

fi 

dnf lsit installed mysql

if [ $? -ne 0 ]; then

dnf install mysql -y

validate $? "Installing mysql"

else 
echo " already mysql installed"
fi

dnf list installed git

if [ $? -ne 0 ]; then

dnf install git -y

validate $? "installing git"

else
echo "afready git available"

fi