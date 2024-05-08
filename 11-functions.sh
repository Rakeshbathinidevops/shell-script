#!/bin/bash

USERID=$(id -u)

VERIFY(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is failure"
    else
        echo "$2 is successful"
    fi
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