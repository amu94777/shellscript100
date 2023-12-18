###delete lofile using while loop
#!/bin/bash
SOURCE_PATH="/tmp/alllogs"
if [ ! -d $SOURCE-PATH ]
then
    echo "$SOURCE_PATH directory is not exist"
fi
FILES-TO-DEL=$(find $SOURCE_PATH -type f +10 -name "*.java")
    