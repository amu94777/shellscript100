#!/bin/bash
AMI=ami-03265a0778a880afb
SG=sg-089f2b87f4fcb3a7e
INSTANCES=("mongodb" "mysql" "redis" "web" "shipping" "payment" "rabbitmq" 
           "cart" "catalogue" "user" "dispatch")
for i in "${INSTANCES[@]}"
do 
   echo "$i" 
   if [ $i == "mongodb" ] || [ $i == "mysql" ] || [ $i == "shipping" ] 
   then
     INSTANCE_TYPE="t3.small"        
   else
     INSTANCE_TYPE="t2.micro"
   fi
aws ec2 run-instances --image-id ami-03265a0778a880afb \
--instance-type $INSTANCE_TYPE \
--security-group-ids sg-089f2b87f4fcb3a7e \
--tag-specifications "ResourceType=instance,Tags=[{key=Name,value=$i}]"  
done        