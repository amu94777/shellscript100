#!/bin/bash
DISK_USG=$(df -hT | grep -Ev 'tmp|File')
THESH_HOLD=1
while IFS= read line
do
   USAGE=$(echo $line | awk '{print $6F}' | cut -d % -f1)
   PARTITION=$(echo $line | awk '{print $1F}')
   if [ $USAGE -ge $THESH_HOLD ]
   then
    message+="HIGH DISK USAGE ON $PARTITION:$USAGE  \n"
   fi 
done <<< $DISK_USG
echo -e "message::$message"
