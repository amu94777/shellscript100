#####PRINT WORDS USING WHILE LOOP IN /ETC/PASSWD FILE######
#!/bin/bash
FILE="/etc/passwd"
if [ ! -f $FILE ]
then 
    echo "The $FILE doesnt exist"
else
    echo "The $FILE is exist"
fi

while IFS=":" read -r username password user_id group_id
do
   echo "username: $username"
   echo "password: $password"
   echo "user_id: $user_id"
   echo "group_id: $group_id"
done < $FILE    