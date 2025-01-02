#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "you must have the sudo accesses to execute this"
exit 1

dnf installed mysql -y

if [ $? -ne 0 ]; then

echo " ERROR : mysql installing failure"

else 

echo "Success : Mysql installed "

fi

dnf installed git -y

if [ $? -ne 0 ]; then

echo "ERROR : Git installing failure"

else 
echo "Success : Git installed"

fi
