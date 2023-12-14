#!/bin/bash
ID=$(id -u)
VALIDATE(){
if [ $1 -ne 0 ] 
then
    echo "ERROR::::$2 package not installed"
    exit 1
else
    echo "$2 package is  installed" 
fi       
}
if [ $ID -ne 0 ]
then 
    echo "ur not a root user run with root user"
    exit 1
 else
    echo "ur a root user"    
fi    
yum install mysql -y
VALIDATE $? "mysql"
yum install git -y  
VALIDATE $? "git"