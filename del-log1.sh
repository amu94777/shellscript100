#!/bin/bash
SOU_PATH="/tmp/shell-logs-01"
if [ ! -d $SOU_PATH ]
then    
    echo "$SOU_PATH is not exist"
else
    echo "$SOU_PATH is exist"
fi        
DELETE_FILES=$(find $SOU_PATH -type f -mtime +8 -name "*.java")

while IFS= read -r line
do
  echo "$line"
  rm -rf $line
done <<< $DELETE_FILES  