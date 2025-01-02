#! /bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "Execute for sudo accesses"

exit 1
fi 

dnf list installed mysql -y

if [ $? -ne 0 ]; then
 dnf install mysql -y

 

 if [ $? -ne 0 ]; then 

 echo " ERROR : mysql installed failed"

 exit 1

 else 

 echo " success : mysql installed"

 fi 
 else 
 echo "already mysql installed"

 fi