#!/bin/bash
SOURCEPATH="/tmp/shellscriptlogs"
if [ ! -d $SOURCEPATH ]
then  
    echo "the $SOURCEPATH IS NOT EXIST"
else
     echo "the $SOURCEPATH IS EXIST"
fi     

 DEL_FILE=$(find $SOURCEPATH -type f -mtime +10 -name "*.log" )   