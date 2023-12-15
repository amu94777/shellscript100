#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
VALIDATE(){
 if [ $1 -ne 0 ] 
 then
    echo -e "$R ERROR ::::::$2 is not successfull $N"
    exit 1
 else
    echo -e "$G $2 is successfull $N"
fi         
}
echo -e "$Y********* CHECKING I AM A ROOT USER OR NOT **********$N"

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:::you are not a root user $N"
    exit 1
else
    echo -e "$G you are a root user $N"
fi 
#the packages want to install and give all in runtime
#i dont know how many packages and which packages are install,
#that y i give $@ in for loop
echo -e "$G********I AM INSTALLING SOME PACKAGES NOW ******$N"

for package in $@
do
    yum list installed $package

    if [ $? -ne 0 ]
    then
           yum install $package -y
           VALIDATE $? "$package is installed"
        else
           echo "$package is already installed"   
    fi
done
echo -e "$Y *** total number of packages:::$#***$N"

echo -e "$Y ***all installed packages::::::$@***$N"

