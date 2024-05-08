#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $O | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME_$TIMESTAMP.log

VERIFY(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is failure"
        exit 1
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

dnf install mysql -y &>>$LOGFILE 
VERIFY $? "installing mysql"

dnf install git -y &>>$LOGFILE
VERIFY $? "installing git"
echo "is script proceeding?"