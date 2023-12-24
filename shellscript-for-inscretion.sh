#!/bin/bash
AMI=ami-03265a0778a880afb
SG=sg-089f2b87f4fcb3a7e
INSTANCES=("mongodb" "mysql" "redis" "web" "shipping" "payment" "rabbitmq" 
           "cart" "catalogue" "user" "dispatch")
ZONE_ID=Z04538903T1NEGY1K95YE
DOMAIN_NAME=jaya123.shop             
for i in "${INSTANCES[@]}"
do 
   echo "$i" 
   if [ $i == "mongodb" ] || [ $i == "mysql" ] || [ $i == "shipping" ] 
   then
     INSTANCE_TYPE="t3.small"        
   else
     INSTANCE_TYPE="t2.micro"
   fi
IP_ADDRESS=$(aws ec2 run-instances --image-id ami-03265a0778a880afb \
--instance-type $INSTANCE_TYPE \
--security-group-ids sg-089f2b87f4fcb3a7e \
--tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]" \
--query 'Instances[0].PrivateIpAddress' --output text) 
echo "$i: $IP_ADDRESS"

#create R53 record, make sure you delete existing record
    aws route53 change-resource-record-sets \
    --hosted-zone-id $ZONE_ID \
    --change-batch '
    {
        "Comment": "Creating a record set for cognito endpoint"
        ,"Changes": [{
        "Action"              : "CREATE"
        ,"ResourceRecordSet"  : {
            "Name"              : "'$i'.'$DOMAIN_NAME'"
            ,"Type"             : "A"
            ,"TTL"              : 1
            ,"ResourceRecords"  : [{
                "Value"         : "'$IP_ADDRESS'"
            }]
        }
        }]
    }
        '
done        