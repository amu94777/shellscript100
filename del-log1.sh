#!/bin/bash
SOU_PATH="/tmp/shell-logs-01"
if [ ! -d $SOU_PATH ]
then    
    echo "$SOU_PATH is not exist"
else
    echo "$SOU_PATH is exist"
fi        