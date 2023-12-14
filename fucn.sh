#!/bin/bash
echo "first i need to check wther i am a root user or not"
ID=$(id -u)
VALIDATE(){
if [ $? -ne 0 ] 
then
    echo "ERROR ::::: package is not installed"
    exit 1
else
    echo "package is insatlled succesfulley"
fi               
}
if [ $ID -ne 0 ]
then 
    echo " ERROR: ur not a root :run with root user "
    exit 1
else
    echo " u r a root user "
fi        
echo " I AM INSTALLING MYSQL "
yum install mysql -y
VALIDATE
echo "NOW I AM INSTALLIG GIT"
yum install git -y
VALIDATE             