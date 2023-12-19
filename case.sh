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
 /?) echo "invalid options:::-"$OPTARG" >&2; USAGE; EXIT;; 
 h) USAGE; exit;;
esac
done



