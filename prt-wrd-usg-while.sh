#####PRINT WORDS USING WHILE LOOP IN /ETC/PASSWD FILE######
#!/bin/bash
FILE="/etc/passwd"
if [ ! -f $FILE ]
then 
    echo "The $FILE doesnt exist"
else
    echo "The $FILE is exist"
fi
        