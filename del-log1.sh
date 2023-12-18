#!/bin/bash
SOU_PATH="/tmp/shell-logs-01"
if [ ! -d $SOU_PATH ]
then    
    echo "$SOU_PATH is not exist"
else
    echo "$SOU_PATH is exist"
fi        
DELETE_FILES=$(find $SOU_PATH -type f -mtime +10 -name "*.java")
echo "$DELETE_FILES"
while IFS= read -r line
do
  echo "Deleting first $line
  rm -rf $line
done <<< $DELETE_FILES  