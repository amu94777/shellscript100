#!/bin/bash
AMI=
SG_ID=
INSTANCES=("mongodb" "redis" "mysql" "rabbitmq" "catalogue" "user" "cart" "shipping" "payment" "dispatch" "web" )
for i in ${INSTANCES[0]}
do
  echo "$i"
  if [ $i == mongodb ] || [ $i == mysql ] || [ $i == shipping ]
  then
    INSTANCE_TYPE="t3.small"
  else
    INSTANCE_TYPE="t2.micro"
  fi
      