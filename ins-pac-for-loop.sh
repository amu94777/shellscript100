#!/bin/bash
ID=$(id -u)
VALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo -e "$R ERROR::::$2 is not successful $N"
       exit 1
     else
       echo -e "$G $2 is successfull $N" 
     fi      
}
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
if [ $ID -ne 0 ]
then    
    echo -e "$R you are not a root user ,run with root user $N"
    exit 1
else
    echo -e "$G you are a root user $N"
fi
echo -e "$G *******NOW I AM INSATLLING SOME PACKAGES******** $N"
yum install git -y
VALIDATE $? "installed git"


