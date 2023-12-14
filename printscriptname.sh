#!/bin/bash
echo "the script name is ::::$0"
NUM=$1
if [ $NUM -gt 100 ]
then
echo " the $NUM is greaterthan 100 "
else
echo "the $NUM is lesserthan 100"
fi