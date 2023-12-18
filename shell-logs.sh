###delete lofile using while loop
#!/bin/bash
SOURCE-PATH="/tmp/shell-logs"
if [ ! -d $SOURCE-PATH ]
then
    echo "$SOURCE-PATH directory is not exist"
fi
FILES-TO-DEL=$(find $SOURCE-PATH -type f +10 -name "*.log")
    