#!/bin/bash
num1=$1
num2=$2
sum=$(($num1+$num2))
echo "total is :::: $sum"
echo "print total number of argments passed:::$#"
echo "print  what are all arguments passed::::$@"
echo "script name ::::$0"