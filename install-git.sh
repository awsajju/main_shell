#! /bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ];then

echo "YOU must have the sudo access to execute this"
exit 1

fi

dnf list installed git

if [ $? -ne 0 ];then

dnf install git -y

if [ $? -ne 0 ]; then

echo "git installed --- failure"
exit 1

else 

echo "git installed successful"

fi

else 
echo "GIt already installed"

fi