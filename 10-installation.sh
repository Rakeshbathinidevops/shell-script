#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "run with root access"
    exit1
else
    echo "you are super user"

fi

dnf install mysql -y
if [ $? -ne 0]
then
    echo "installation of mysql is FAILURE"
    exit 1
else   
    echo "installation of mysql is SUCCESS"
fi

dnf install git -y
if [ $? -ne 0]
then
    echo "installation of git is FAILURE"
    exit 1
else   
    echo "installation of git is SUCCESS"
fi
echo "is script proceeding?"