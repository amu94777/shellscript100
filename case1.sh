#!/bin/bash
NAME=""
WISHES="good morning"
USAGE(){
    echo "USAGE::::$(basename $0) -n NAME -w WISHES -h USAGE"
    echo "OPTIONS"
    echo "-n, -n is name we should enter name"
    echo "-w, -w is wishes msg" its optional ..by default it prints "good morning",in case user gives any 
    other input,it overwrites the default msg...
    echo "-h, -h display help and exit"

}
while getopts ":n:w:h" opt; do
case $opt in 
 n) NAME="$OPTARG";;
 w) WISHES="$OPTARG";;
 :) USAGE; exit;;
 \?) echo "invalid options:::-"$OPTARG"" >&2; USAGE; exit;; 
 h) USAGE; exit;;
esac
done
if [ -z "$NAME" ]; then
echo "ERROR::::-n is manadatory"
USAGE
exit 1
fi
echo "hello $NAME $WISHES I HAVE BEEN LEARNING SHELLSCRIPTING"
