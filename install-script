#! /bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "ERROR : you must have the sudo access to execute the script"

exit 1

fi

dnf list mysql installed 

if [ $? -ne 0 ]; then

dnf install mysql -y

if [ $? -ne 0 ]; then

echo "ERROR: Mysql failure"
exit 1
else 
echo "Mysql install successfull"

fi
 else 
 echo "mysql already installed"

 fi