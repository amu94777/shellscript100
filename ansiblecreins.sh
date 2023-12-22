#!/bin/bash
AMI=ami-03265a0778a880afb
SG_ID=sg-089f2b87f4fcb3a7e
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
