######dDELETE LOG FILES IN A DIRECTORY######
#!/bin/bash
DIRNAME="ammu"
if [ ! -d $DIRNAME ]
then
    echo "the directory is not exist"
fi
find $DIRNAME -type f -mtime +10 -name ".t" -exec rm {} \; 
