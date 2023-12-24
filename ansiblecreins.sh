#!/bin/bash
AMI= "ami-03265a0778a880afb"
SG_ID= "sg-089f2b87f4fcb3a7e"
INSTANCES=("mongodb" "redis" "mysql" "rabbitmq" "catalogue" "user" "cart" "shipping" "payment" "dispatch" "web" )
for i in ${INSTANCES[0]}
do
  echo "$i"
  if [ $i == mongodb ] || [ $i == mysql ] || [ $i == shipping ]
  then
    INSTANCE_TYPE= "t3.small"
  else
    INSTANCE_TYPE= "t2.micro"
  fi
done
IP_ADDRESS=$(aws ec2 run-instances --image-id ami-03265a0778a880afb --instance-type $INSTANCE_TYPE --security-group-ids sg-089f2b87f4fcb3a7e --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]" --query 'Instances[0].PrivateIpAddress' --output text)
    echo "$i: $IP_ADDRESS"

