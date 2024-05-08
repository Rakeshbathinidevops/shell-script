#!/bin/bash

USERID=$(id -u)

VERIFY(){
    echo "exit status: $1"
    echo "what r u doing: $2"
}

if [ $USERID -ne 0 ]
then
    echo "run with root access"
    exit1
else
    echo "you are super user"

fi

dnf install mysql -y
VERIFY $? "installing mysql"

dnf install git -y
VERIFY $? "installing git"
echo "is script proceeding?"