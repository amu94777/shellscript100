#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
echo "$ID"
echo "$TIMESTAMP"
LOGFILE="/tmp/$0-$TIMESTAMP.log"
ls -l >> $LOGFILE
