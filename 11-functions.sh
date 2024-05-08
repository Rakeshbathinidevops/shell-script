#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $O | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

VERIFY(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is $R failure $N"
        exit 1
    else
        echo "$2 is $G successful $N"
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

dnf install dockerr -y &>>$LOGFILE
VERIFY $? "installing docker"

echo "is script proceeding?"