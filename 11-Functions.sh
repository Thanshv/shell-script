#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2.... FAILURE"
        exit 1
    else
        echo "$2.... SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Pleasse run this script with root access"
    exit 1
else
    echo "You are super user."
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing Mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing Git"