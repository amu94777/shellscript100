#!/bin/bash
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