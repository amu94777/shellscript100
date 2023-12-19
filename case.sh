#!/bin/bash
NAME=""
WISHES=""
USAGE(){
    echo "USAGE::::$(basename $0) -n NAME -w WISHES -h USAGE"
    echo "OPTIONS"
    echo "-n, -n is name we should enter name"
    echo "-w, -w is wishes msg"
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
if [ -z $NAME ] || [ -z $WISHES ];then
echo "ERROR::::both -n and -w is mantadatry"
USAGE
exit 1
fi
echo "hello $NAME $WISHES I HAVE BEEN LEARNING SHELLSCRIPTING"




