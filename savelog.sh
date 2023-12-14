#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo " now i am installing my sql "
echo "first i need to check wther i am a root user or not"
ID=$(id -u)
if [ $ID -ne 0 ]
then 
    echo " ERROR: ur not a root :run with root user "
    exit 1
else
    echo " u r a root user "
fi        
echo " I AM INSTALLING MYSQL "
yum install mysql -y &>> $LOGFILE
if [ $? -ne 0 ]
then
    echo " ERROR::mysql is not installing "
    exit 1
else
    echo " mysql is installed successfully "
fi    