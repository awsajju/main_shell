#! /bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "Error : for this you have to excute with sudo access"
exit 1

fi

dnf list installed git 

if [ $? -ne 0]; then

dnf install git -y

if [ $? -ne 0 ]; then

echo "Error: Git installing failed"
exit 1

else 

echo "Success: git installed succesful"

fi

else
echo "already git installed"

fi